import os
import rasterio
import rasterio.plot
import matplotlib.pyplot as plt
import geopandas as gpd
import earthpy as et
import numpy as np
import requests
from matplotlib import pyplot
import streamlit

url_wind = "https://raw.githubusercontent.com/JulianaTQ/Project_Data_Analyst/main/Wind_Average.tif"
url_solar = "https://raw.githubusercontent.com/JulianaTQ/Project_Data_Analyst/main/Solar_radiation_average.tif"
url_Depart =  "https://raw.githubusercontent.com/JulianaTQ/Project_Data_Analyst/main/Departamentos.zip"

response1 = requests.get(url_wind, stream=True)
if response1.status_code == 200:
    with open("Wind_Average.tif", "wb") as f:
        for chunk in response1.iter_content(chunk_size=8192):
            f.write(chunk)
else:
    print("Error al descargar el archivo")

response2 = requests.get(url_solar, stream=True)
if response2.status_code == 200:
    with open("Solar_radiation_average.tif", "wb") as f:
        for chunk in response2.iter_content(chunk_size=8192):
            f.write(chunk)
else:
    print("Error al descargar el archivo")

src1 = rasterio.open("Wind_Average.tif")

# Mostrar el mapa de promedio de vientos
fig, ax = plt.subplots(figsize=(10, 6))
rasterio.plot.show(src1, ax=ax)
plt.show()

src2 = rasterio.open("Solar_radiation_average.tif")

# Mostrar el mapa de promedio de radiación solar
fig, ax = plt.subplots(figsize=(10, 6))
rasterio.plot.show(src2, ax=ax)
plt.show()

#Carga del archivo shape para unificar los mapas
import zipfile

# Nombre del archivo ZIP temporal
zip_path = "Departamentos.zip"

response = requests.get(url_Depart, stream=True)
if response.status_code == 200:
    with open(zip_path, "wb") as f:
        for chunk in response.iter_content(chunk_size=8192):
            f.write(chunk)
    print("Archivo ZIP descargado correctamente.")
else:
    print("Error al descargar el archivo.")
    exit()

# Extraer el ZIP
extract_folder = "Departamentos_shp"
with zipfile.ZipFile(zip_path, "r") as zip_ref:
    zip_ref.extractall(extract_folder)
    print("Archivo ZIP extraído correctamente.")

shp_files = [f for f in os.listdir(extract_folder) if f.endswith(".shp")]
if not shp_files:
    print("No se encontró ningún archivo .shp en la carpeta extraída.")
    exit()

shp_file_path = os.path.join(extract_folder, shp_files[0])
gdf = gpd.read_file(shp_file_path)

print(gdf.head())

gdf.plot()

#Unificar la visualización del shape por departamentos y los raster
fig, axes = plt.subplots(1, 2, figsize=(12, 6), constrained_layout=True)

im1 = rasterio.plot.show(src1, ax=axes[0], cmap="viridis")
gdf.plot(ax=axes[0], facecolor="none", edgecolor="black", linewidth=0.7)

im2 = rasterio.plot.show(src2, ax=axes[1], cmap="inferno")
gdf.plot(ax=axes[1], facecolor="none", edgecolor="black", linewidth=0.7)

cbar_ax1 = fig.add_axes([0.12, 0.94, 0.25, 0.02])
cbar_ax2 = fig.add_axes([0.57, 0.94, 0.25, 0.02])

fig.colorbar(im1.images[0], cax=cbar_ax1, orientation="horizontal", label="Vientos (m/s)")
fig.colorbar(im2.images[0], cax=cbar_ax2, orientation="horizontal", label="Rad_solar (kJ/m2.dia)")

plt.show()

#Cargar el archivo de datos de consumo de energía y producción por municipios (viento y radiación) y departamentos (productos desecho de cultivos)
import seaborn as sns
import scipy as sp
import pandas as pd

df= pd.read_csv("resumen_variables.csv", encoding="latin-1", sep=";")

# Estadística descriptiva
df.info()

df["Solar_radiation_promedio"] = pd.to_numeric(df["Solar_radiation_promedio"], errors="coerce")
df["Wind_promedio"] = pd.to_numeric(df["Wind_promedio"], errors="coerce")
df["consumo_energia_promedio"] = pd.to_numeric(df["consumo_energia_promedio"], errors="coerce")
df["Desecho_Ton_promedio"] = pd.to_numeric(df["Desecho_Ton_promedio"], errors="coerce")
df["consumo_energia_promedio"] = df["consumo_energia_promedio"].round(2)

# Identificación de datos nulos
df.isnull().sum()

# Eliminación de registros con datos nulos en la columna "tipo_cultivo"
df = df[df["tipo_cultivo"].notna()]
df.isnull().sum()

#Exploramos graficamente los datos
plt.figure(figsize=(12, 5))

plt.subplot(2, 2, 1)
df['Solar_radiation_promedio'].plot(kind='box')
plt.title('Boxplot de radiación solar')

plt.subplot(2, 2, 2)
df['Wind_promedio'].plot(kind='box', color='orange')
plt.title('Boxplot de velocidad de vientos')

plt.subplot(2, 2, 3)
df['Desecho_Ton_promedio'].plot(kind='box', color='grey')
plt.title('Boxplot de desechos de cultivos')

plt.subplot(2, 2, 4)
df['consumo_energia_promedio'].plot(kind='box', color='red')
plt.title('Boxplot de consumo de energía promedio')

plt.tight_layout()
plt.show()

plt.subplot(2, 2, 1)
plt.scatter(df["consumo_energia_promedio"], df["Solar_radiation_promedio"], alpha=0.5, color='b')
plt.xlabel("Consumo energía promedio")
plt.ylabel("Radiación solar")
plt.title("Radiación Solar vs Consumo Energía")

plt.subplot(2, 2, 2)
plt.scatter(df["consumo_energia_promedio"], df["Wind_promedio"], alpha=0.5, color='g')
plt.xlabel("Consumo energía promedio")
plt.ylabel("Velocidad del viento")
plt.title("Viento vs Consumo Energía")

plt.subplot(2, 2, 3)
plt.scatter(df["consumo_energia_promedio"], df["Desecho_Ton_promedio"], alpha=0.5, color='r')
plt.xlabel("Consumo energía promedio")
plt.ylabel("Desechos de cultivos por tonelada")
plt.title("Desechos vs Consumo Energía")

plt.tight_layout()
plt.show()

data_grouped = df.groupby(['tipo_cultivo','DEPARTAMENTO'])['Desecho_Ton_promedio'].mean().unstack()
data_grouped.plot(figsize=(10, 6), marker='o', colormap='tab20')
plt.title('Producción promedio por cultivo para cada departamento')
plt.xlabel('Tipo de cultivo')
plt.ylabel('Producción Promedio (Ton)')
plt.legend(title="Departamento", bbox_to_anchor=(1.05, 1), loc="upper left")
plt.grid(True)
plt.show()

#Para generar un indice para cada tipo de energía, se necesita normalizar las variables para compararlas directamente:

from sklearn.preprocessing import MinMaxScaler

scaler = MinMaxScaler()

df[["Solar_norm", "Wind_norm", "Desecho_norm"]] = scaler.fit_transform(
    df[["Solar_radiation_promedio", "Wind_promedio", "Desecho_Ton_promedio"]]
)

#Con las variables normalizadas generamos un indice de acuerdo al consumo de energía promedio de cada sitio
df["Indice_Solar"] = df["Solar_norm"] * df["consumo_energia_promedio"]
df["Indice_Eolico"] = df["Wind_norm"] * df["consumo_energia_promedio"]
df["Indice_Biomasa"] = df["Desecho_norm"] * df["consumo_energia_promedio"]

df["Energia_Prioritaria"] = df[
    ["Indice_Solar", "Indice_Eolico", "Indice_Biomasa"]
].idxmax(axis=1).str.replace("Indice_", "")

#Como para la variable desechos por tonelada tenemos información solo por departamento, generamos el indice a esta escala
df_departamento = df.groupby(["DEPARTAMENTO", "Energia_Prioritaria"]).size().unstack()
df_departamento["Energia_Depto"] = df_departamento.idxmax(axis=1)

#Finalmente mostramos el indice de priorización para cada zona
import folium

# Crear mapa centrado en la ubicación promedio de los municipios
mapa = folium.Map(location=[df.Latitud.mean(), df.Longitud.mean()], zoom_start=6)

# Agregar el shape de los departamentos
folium.GeoJson(
    gdf,  # Aquí usamos el shapefile de los departamentos
    name="DEPARTAMEN",
    style_function=lambda feature: {
        "fillColor": "lightgray",
        "color": "black",
        "weight": 1,
        "fillOpacity": 0.4,
    },
    tooltip=folium.GeoJsonTooltip(fields=["DEPARTAMEN"], aliases=["Departamento:"])
).add_to(mapa)

# Agregar puntos de municipios con el color según la energía prioritaria
for _, row in df.iterrows():
    color = {"Solar": "orange", "Eolico": "blue", "Biomasa": "green"}[row["Energia_Prioritaria"]]
    folium.Marker(
        location=[row.Latitud, row.Longitud],
        popup=f"{row.MUNICIPIO} - {row.Energia_Prioritaria}",
        icon=folium.Icon(color=color),
    ).add_to(mapa)

# Agregar control de capas
folium.LayerControl().add_to(mapa)

# Mostrar el mapa
mapa

#Ahora nuestra tabla incluye un indice para cada tipo de energía por departamento
df.head()

df.to_csv("mi_archivo.csv", index=False)  # Guarda sin la columna de índices

from google.colab import files
files.download("mi_archivo.csv")  # Descarga el archivo

df.info()

# Crear gráfico de columnas apiladas
fig, ax = plt.subplots()
ax.bar(df["DEPARTAMENTO"], df["Indice_Solar"], label='Solar', color= "r")
ax.bar(df["DEPARTAMENTO"], df["Indice_Eolico"], label='Eólica', color= "b")
ax.bar(df["DEPARTAMENTO"], df["Indice_Biomasa"], label='Biomasa', color= "g")

# Añadir etiquetas y título
ax.set_xlabel('Departamento')
plt.xticks(rotation=90)
ax.set_ylabel('Indice')
ax.set_title('Indice priorización tipo energía / departamento')
ax.legend()
