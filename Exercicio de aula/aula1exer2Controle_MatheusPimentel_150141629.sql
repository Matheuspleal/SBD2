--Script de criação de perfis de controles nas tabelas7

--Criação dos usuários
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'dbAdmin';
CREATE USER 'funcionario'@'localhost' IDENTIFIED BY 'func';

--Permissões dos usuários
GRANT ALL ON store.* TO 'admin'@'localhost';
GRANT SELECT, INSERT, UPDATE ON store.Venda TO 'funcionario'@'localhost';