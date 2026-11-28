# Proyecto: Base de Datos SQL en Docker

Este módulo contiene la configuración para desplegar una base de datos relacional utilizando contenedores de **Docker**.


P2-Docker-SQL-Database 🐳📊

Este proyecto corresponde al Módulo de Carga y Transformación (Pipeline ELT). Su objetivo principal es recibir los datos en bruto extraídos mediante Web Scraping en el Proyecto 1, integrarlos automáticamente dentro de una arquitectura contenerizada y procesarlos usando un motor de base de datos relacional.

¿De qué trata este proyecto?

El proyecto implementa la infraestructura necesaria para orquestar un entorno aislado de base de datos relacional utilizando PostgreSQL 15 sobre Docker.
El flujo técnico ejecutado consiste en:
1. Montaje de Infraestructura: Creación de un contenedor Docker automatizado.
2. Carga Masiva (Load): Ingesta automática del archivo plano empresas_usa.csv generado por el scraper hacia el motor SQL mediante comandos nativos de alta velocidad (COPY).
3. Transformación (Transform): Limpieza profunda de datos (Data Cleaning) mediante expresiones regulares directamente en SQL, migrando tipos de datos textuales sucios (con signos de $ o %) a campos numéricos de alta precisión (BIGINT, INT, FLOAT).

Requisitos Previos

Antes de encender el entorno, asegúrate de tener instalado en tu sistema operativo Linux Ubuntu:
• Docker
• Docker Compose v2

Cómo Encender y Controlar el Entorno

Todos los comandos deben ejecutarse desde la terminal parándose dentro de la carpeta de este proyecto:
bash
cd /home/emanu/Descargas/Jupyter/P2-Docker-SQL-Database
Usa el código con precaución.

1. Encender el contenedor (Segundo Plano)

Para descargar la imagen oficial de PostgreSQL e iniciar la base de datos de forma limpia:
bash
sudo docker compose up -d
Usa el código con precaución.

2. Verificar el estado del servicio

Para asegurarte de que el contenedor se encuentra activo (Up) y corriendo correctamente:
bash
sudo docker compose ps
Usa el código con precaución.

3. Conectarse a la consola interactiva SQL

Para ingresar directamente al motor de la base de datos y empezar a manipular las tablas:
bash
sudo docker exec -it sql-empresas-container psql -U emanu -d wikipedia_data
Usa el código con precaución.

4. Apagar el entorno de forma segura

Para apagar el servicio y liberar el 100% de la memoria RAM de tu computadora sin perder tus datos:
bash
sudo docker compose down
Usa el código con precaución.
(Nota: Evita usar la bandera -v a menos que desees destruir intencionalmente el almacenamiento y las tablas creadas).

🗂️ Documentos y Estructura Obtenida

Al levantar este entorno, el sistema procesa y genera los siguientes componentes estructurados dentro del contenedor:

1. Base de Datos: wikipedia_data

Es el esquema principal configurado en las variables de entorno de Docker donde reside toda la información del proyecto.

2. Tabla Relacional: empresas_usa

Tabla que contiene los registros del Top 100 de mayores empresas de EE.UU. Su estructura final incluye las siguientes columnas:
• Columnas de Texto Original (Bruto): rank, name, industry, revenue, revenue_growth, employees, headquarters.
• Columnas Métricas Optimizadas (Limpias):
	• revenue_numeric (FLOAT): Ingresos planos listos para cálculos financieros masivos.
	• employees_numeric (INT): Cantidad de personal convertida en números enteros puros.
	• growth_numeric (FLOAT): Porcentaje de crecimiento transformado en valores decimales para promedios exactos.
    
