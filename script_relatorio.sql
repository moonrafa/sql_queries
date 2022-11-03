-- Criar queries para criar tabelas com as colunas necessárias para o arquivo Relatorio_cadop.csv.
CREATE DATABASE operadoras_ativas_db;
USE operadoras_ativas_db;
CREATE TABLE operadoras
(
    registro_ans VARCHAR(20),
    cnpj VARCHAR(20),
    razao_social VARCHAR
    (150),
    nome_fantasia VARCHAR(150),
    modalidade VARCHAR(50),
    logradouro VARCHAR(50),
    numero VARCHAR(20),
    complemento VARCHAR(40),
    bairro VARCHAR(40),
    cidade VARCHAR(40),
    uf VARCHAR(2),
    cep VARCHAR(30),
    ddd VARCHAR(5),
    telefone VARCHAR(20),
    fax VARCHAR(30),
    endereco_eletronico VARCHAR(150),
    representante VARCHAR(100),
    cargo_representante VARCHAR(50),
    data_registro_ans VARCHAR(10)
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Relatorio_cadop.csv' INTO TABLE operadoras CHARACTER SET latin1 FIELDS TERMINATED BY ';' enclosed by '"' LINES TERMINATED BY '\r\n' IGNORE 3 ROWS;

SELECT * FROM operadoras;

SELECT * FROM operadoras INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/relatorioExport.csv' CHARACTER SET utf8mb4 FIELDS TERMINATED BY ';' enclosed by '"' LINES TERMINATED BY '\r\n';

