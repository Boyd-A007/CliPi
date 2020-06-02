#get container
docker pull mysql/mysql-server:latest
#start container
docker run --hostname=CliDB --name=ClimateData -d mysql/mysql-server:latest
#Get MySQL Password
docker logs mysql1 2>&1 | grep GENERATED
#Log into DB
docker exec -it ClimateData mysql -uroot -p
#change PSW
ALTER USER 'root'@'localhost' IDENTIFIED BY '!e8ru0wu#';




CREATE DATABASE CLIMATEDATA;
USE CLIMATEDATA;
Create Table Data(
	entry_id INT AUTO_INCREMENT PRIMARY KEY,
	node_name VARCHAR(255) NOT NULL,
	entry_date DATE DEFAULT CURRENT_DATE,
	entry_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	temp_in_C DOUBLE NOT NULL,
	humid DOUBLE NOT NULL
);


Create Table Nodes(
	node_id INT AUTO_INCREMENT PRIMARY KEY,
	node_name VARCHAR(255) NOT NULL,
	node_addr VARCHAR(255) NOT NULL,
	date_added TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	last_seen TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
