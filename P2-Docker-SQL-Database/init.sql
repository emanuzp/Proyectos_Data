CREATE TABLE IF NOT EXISTS empresas_usa(
	Rank INT,
	Name VARCHAR(50),
	Industry VARCHAR(50),
	Revenue VARCHAR(100),
	Revenue_growth VARCHAR(100),
	Employees VARCHAR(100),
	Headquarters VARCHAR(50)
);

-- Comando para cargar tu archivo CSV limpio desde la ruta temporal de Docker
COPY empresas_usa(Rank, Name, Industry, Revenue, Revenue_growth, Employees, Headquarters)
FROM '/tmp/empresas_usa.csv'
DELIMITER ','
CSV HEADER;
