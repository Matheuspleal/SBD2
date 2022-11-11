--Script de criação das tabelas e do banco de dados MySQL
CREATE DATABASE IF NOT EXISTS store;

--Entidades
    CREATE TABLE Gerente (
        cpf varchar(11) NOT NULL,
        email varchar(100) NOT NULL,
        area ENUM('Moveis', 'Eletronicos', 'Utensilios') NOT NULL,
        nome varchar(120) NOT NULL,
        senha_acesso varchar(10) NOT NULL,

        PRIMARY KEY (cpf)
    );

    CREATE TABLE Empregado (
        matricula int NOT NULL,
        endereco_residencial varchar(150) NOT NULL,
        telefone_residencial varchar(10),
        telefone_celular varchar(11),
        nome varchar(120) NOT NULL,
        cpf varchar(11) NOT NULL,
        senha_acesso varchar(10) NOT NULL,

        UNIQUE (matricula),
        PRIMARY KEY (cpf)
    );

    CREATE TABLE Produto (
        codigo_de_barras int NOT NULL,
        preco_unitario float(2) NOT NULL DEFAULT 10.00,
        qtd_estoque int NOT NULL DEFAULT 1,
        nome varchar(100),
        area ENUM('Moveis', 'Eletronicos', 'Estoque', 'Utensilios') NOT NULL,

        PRIMARY KEY (codigo_de_barras)
    );

    CREATE TABLE Venda (
        data_de_compra DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
        qtd_vendida int NOT NULL,
        matricula_empregado int NOT NULL,
        codigo_de_barras int NOT NULL,

        FOREIGN KEY (matricula_empregado) REFERENCES Empregado(matricula),
        FOREIGN KEY (codigo_de_barras) REFERENCES Produto(codigo_de_barras)
    );

--Relacionamentos
    CREATE TABLE supervisiona (
        cpf_gerente varchar(11) NOT NULL,
        matricula_empregado int NOT NULL,

        FOREIGN KEY (cpf_gerente) REFERENCES Gerente(cpf),
        FOREIGN KEY (matricula_empregado) REFERENCES Empregado(matricula)
    );