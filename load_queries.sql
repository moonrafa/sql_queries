CREATE DATABASE demonstracoes_contabeis;

USE demonstracoes_contabeis;

CREATE TABLE demonstracoes(data_completa VARCHAR(20), reg_ans VARCHAR(30), cd_conta_contabil VARCHAR(30), 
descricao VARCHAR(150), vl_saldo_inicial VARCHAR(40), vl_saldo_final VARCHAR(40));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/1T2021.csv' INTO TABLE demonstracoes CHARACTER SET latin1 FIELDS TERMINATED BY ';' enclosed by '"' LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/2T2021.csv' INTO TABLE demonstracoes CHARACTER SET latin1 FIELDS TERMINATED BY ';' enclosed by '"' LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/3T2021.csv' INTO TABLE demonstracoes CHARACTER SET latin1 FIELDS TERMINATED BY ';' enclosed by '"' LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/4T2021.csv' INTO TABLE demonstracoes CHARACTER SET latin1 FIELDS TERMINATED BY ';' enclosed by '"' LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/1T2022.csv' INTO TABLE demonstracoes CHARACTER SET latin1 FIELDS TERMINATED BY ';' enclosed by '"' LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/2T2022.csv' INTO TABLE demonstracoes CHARACTER SET latin1 FIELDS TERMINATED BY ';' enclosed by '"' LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;

SELECT * FROM demonstracoes INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/demonstracoes_all.csv' CHARACTER SET utf8mb4 FIELDS TERMINATED BY ';' enclosed by '"' LINES TERMINATED BY '\r\n';