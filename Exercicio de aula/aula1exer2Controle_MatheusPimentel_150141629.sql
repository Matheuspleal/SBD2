--Script de criação de perfis de controles nas tabelas7

--Criação dos usuários
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'dbAdmin';
CREATE USER 'funcionario'@'localhost' IDENTIFIED BY 'func1onarioL0j4';

--Permissões dos usuários
GRANT ALL PRIVILEGES ON store TO 'admin'@'localhost';
GRANT SELECT, INSERT, UPDATE ON store TO 'funcionario'@'localhost';