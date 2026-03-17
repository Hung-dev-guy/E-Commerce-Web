# THIS IS TUTORIAL TO RUN THE PROJECT 
## STEP 1: START SQL SERVER (USE DOCKER)
#### To create and run a new sql server container (use 2022 version for Linux)
```bash
docker run -d --name sqlserver -p 1433:1433 -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=hUnG2#45@" mcr.microsoft.com/mssql/server:2022-latest
```
#### To start sqlserver container
```bash
docker start sqlserver
```
#### To observe all environment variables of sqlserver container
```bash
docker inspect sqlserver --format '{{range .Config.Env}}{{println .}}{{end}}'
```
#### To access to running sqlserver container
```bash
docker exec -it sqlserver /bin/bash
```
#### To stop sql server
```bash
docker stop sqlserver
```
#### To remove sql server
```bash
docker rm sqlserver 2>/dev/null
```
## STEP 2: INITIALIZE DATABASE SCHEMA
#### To copy from local to container
```bash
docker cp database/ECommerceTech.sql sqlserver:/tmp/ECommerceTech.sql
```
#### To execute building database schema
```bash

docker exec -it sqlserver /opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P "hUnG2#45@" -C -i /tmp/ECommerceTech.sql
```

## STEP 3: START RUNNING BACKEND
```bash
uv sync
source .venv/bin/activate
uvicorn backend.app.main:app --reload --host 0.0.0.0 --port 8000
```
## STEP 4: ACCESS THE APPLICATION
Frontend Page: http://localhost:8000/static/sql-playground.html

## STEP 5: INSERT DATA 
```bash
docker cp /home/hungdvlper/Documents/DBMS/E_commerce/DataForInsert/insertData.sql sqlserver:/tmp/insertData.sql
docker exec -it sqlserver /opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P "hUnG2#45@" -C -i /tmp/insertData.sql
```
Then you can practice writing sql queries to get results

## STEP 6: USE CLI TO WRITE SQL QUERIES (OPTIONAL)
```bash
docker exec -it sqlserver /opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P "hUnG2#45@" -C

SELECT name FROM sys.databases;
GO

USE ECommerceTech;
GO
```