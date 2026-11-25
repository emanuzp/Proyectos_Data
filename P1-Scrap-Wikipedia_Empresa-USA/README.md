# 📊 Extracción de Datos: Empresas más grandes de EE.UU. por Ingresos

Este proyecto consiste en un script automatizado de **Web Scraping** desarrollado en Python dentro de un entorno Jupyter Notebook. El objetivo principal es extraer, limpiar y estructurar la información de la tabla de las mayores empresas públicas de los Estados Unidos directamente desde Wikipedia.

## 🎯 Objetivo del Proyecto
El script automatiza la consulta a internet y parsea el código HTML para consolidar un conjunto de datos (dataset) limpio. Esto evita la recolección manual de información y genera un archivo estructurado listo para fases posteriores de análisis de datos (Data Analysis) o ingeniería de datos (Data Engineering).

## 🛠️ Tecnologías y Librerías Utilizadas
El entorno de desarrollo está montado sobre **Linux** utilizando las siguientes herramientas del ecosistema de Python:
* **`requests`**: Para gestionar las peticiones HTTP GET y descargar de forma segura el código fuente de Wikipedia.
* **`beautifulsoup4` (bs4)**: Para procesar (parsear) el árbol HTML y navegar eficientemente a través de las etiquetas de la tabla.
* **`pandas`**: Para la estructuración, limpieza final y conversión de los datos acumulados en un DataFrame unificado y su posterior exportación.

## 📂 Descripción de los Archivos en esta Carpeta
* **`ScrapWEB.ipynb`**: Cuaderno de Jupyter que contiene el código fuente paso a paso, desde la configuración del `User-Agent` (necesario para evitar bloqueos del servidor) hasta el algoritmo de recolección en bucle.
* **`usa_largest_companies.csv`**: El producto final del script. Un archivo plano con codificación UTF-8 que almacena las columnas limpias (Rank, Name, Industry, Revenue, etc.) sin saltos de línea innecesarios (`\n`).

## 🚀 Cómo Ejecutar el Proyecto en Linux

1. Asegúrate de tener instaladas las dependencias requeridas en tu terminal:
   ```bash
   pip install requests beautifulsoup4 pandas
   ```
2. Inicia tu servidor de Jupyter e ingresa a esta carpeta:
   ```bash
   jupyter notebook
   ```
3. Abre el archivo `ScrapWEB.ipynb` y ejecuta todas las celdas en orden (`Shift + Enter`). El archivo CSV se regenerará o actualizará automáticamente en la ruta configurada.

