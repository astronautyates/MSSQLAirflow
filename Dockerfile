FROM quay.io/astronomer/astro-runtime:5.0.8

USER ROOT

CMD 'apt update && apt install wget && apt install gnupg2 && wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add - && apt update && apt install add-apt-repository && cat /etc/apt/sources.list && sudo apt install software-properties-common && sudo su && curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && curl https://packages.microsoft.com/config/debian/11/prod.list > /etc/apt/sources.list.d/mssql-release.list && exit && sudo apt-get update && sudo ACCEPT_EULA=Y apt-get install -y msodbcsql18 && Pip install pyodbc && pip install apache-airflow-providers-microsoft-mssql==3.1.0 && python && from airflow.providers.microsoft.mssql.operators.mssql import MsSqlOperator'

USER airflow