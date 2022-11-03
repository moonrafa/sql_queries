-- Montar uma query analítica que traga a resposta para as seguintes perguntas:
-- Quais as 10 operadoras que mais tiveram despesas com "EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR" no último trimestre?


USE demonstracoes_contabeis;

SELECT reg_ans FROM demonstracoes WHERE  data_completa='01/04/2022' AND descricao='EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR' ORDER BY vl_saldo_final DESC LIMIT 10 INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/trimestre.csv' CHARACTER SET utf8mb4 FIELDS TERMINATED BY ';' enclosed by '"' LINES TERMINATED BY '\r\n';

-- Quais as 10 operadoras que mais tiveram despesas com "EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR" no último ano?

SELECT reg_ans FROM demonstracoes WHERE data_completa='01/04/2022' OR data_completa='2022/01/01' OR data_completa='01/07/2021' OR data_completa='2021/10/01' AND descricao='EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR' ORDER BY vl_saldo_final DESC LIMIT 10 INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/ano.csv' CHARACTER SET utf8mb4 FIELDS TERMINATED BY ';' enclosed by '"' LINES TERMINATED BY '\r\n';



