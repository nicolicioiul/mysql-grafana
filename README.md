# Grafana and Prometheus monitoring for Mysql 


Installation

 ```
    git pull 
    mkdir -p var/alertmanager/data
    mkdir -p var/grafana/data
    mkdir -p var/prometheus/data
    chmod -R 777 var/*
    docker-compose up -d
```




Mysql exporter:
    https://github.com/prometheus/mysqld_exporter
```angular2html
    CREATE USER 'exporter'@'localhost' IDENTIFIED BY 'XXXXXXXX' WITH MAX_USER_CONNECTIONS 3;
    GRANT PROCESS, REPLICATION CLIENT, SELECT ON *.* TO 'exporter'@'localhost';
```



    
