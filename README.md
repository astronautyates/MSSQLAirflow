MSSQL Connection Overview
========

This repo is simply designed to show you how to connect to an MSSQL database using Airflow! This has a lot of kinks, where you can't use the officially supported operator directly, but to install several system level packages via the Dockerfile, and then after importing the operator/pyodbc in the DAG file, you then have to create a python function that uses odbc to connect to the database, not the actual MSSQL Operator, even though that must also be present.... I know, it's crazy! 
