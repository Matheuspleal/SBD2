--Script de alteração (inserção) nas tabelas

-- Gerentes
INSERT INTO Gerente (cpf, email, area, nome, senha_acesso)
VALUES ('00133322299', 'alan_gerente@loja.com', 'Moveis', 'Alan Silva', 'j&mn8*k');

INSERT INTO Gerente (cpf, email, area, nome, senha_acesso)
VALUES ('00255577701', 'joao_gerente@loja.com', 'Moveis', 'Joao Alves', 'q@ve6&l');

INSERT INTO Gerente (cpf, email, area, nome, senha_acesso)
VALUES ('10346713912', 'manuela_gerente@loja.com', 'Moveis', 'Manuela Santos', 'l(0k(x)a)');

INSERT INTO Gerente (cpf, email, area, nome, senha_acesso)
VALUES ('31346713912', 'joana_gerente@loja.com', 'Eletronicos', 'Jana Santos', 'q!vy4&l');

INSERT INTO Gerente (cpf, email, area, nome, senha_acesso)
VALUES ('30346713912', 'jessica_gerente@loja.com', 'Eletronicos', 'Jessica Soares', 'u%bg1*a');

INSERT INTO Gerente (cpf, email, area, nome, senha_acesso)
VALUES ('10347613192', 'jandira_gerente@loja.com', 'Eletronicos', 'Jandira Silva', 'y$$11#!h');

INSERT INTO Gerente (cpf, email, area, nome, senha_acesso)
VALUES ('10364611411', 'manoela_gerente@loja.com', 'Utensilios', 'Manoela Santos', 'g(*)1lx%!');

-- Empregados
INSERT INTO Empregado (matricula, endereco_residencial, telefone_residencial, telefone_celular, nome, cpf, senha_acesso)
VALUES (1, 'Rua das oliveiras 32 Sydney', '33331222', '9888898888', 'Julio Rocha', '01230450671', '@julinho02');

INSERT INTO Empregado (matricula, endereco_residencial, telefone_residencial, telefone_celular, nome, cpf, senha_acesso)
VALUES (2, 'P Sherman 42 Wallaby way Sydney', '32231221', '989998908', 'Vinicius Teles', '10322150671', '@vinas13');

INSERT INTO Empregado (matricula, endereco_residencial, telefone_residencial, telefone_celular, nome, cpf, senha_acesso)
VALUES (3, 'Rota 65 Arizona', '32569876', '987788678', 'Cassio Pedroza', '11566711611', 'cas1u5');

INSERT INTO Empregado (matricula, endereco_residencial, telefone_residencial, telefone_celular, nome, cpf, senha_acesso)
VALUES (4, 'Rota 66 Araguaia', '34544886', '981128378', 'Carlos Oliveira', '00610500789', 'c4r1o5');

INSERT INTO Empregado (matricula, endereco_residencial, telefone_residencial, telefone_celular, nome, cpf, senha_acesso)
VALUES (5, 'Rota 16 Sao Paulo', '32222416', '981235818', 'Caua Bastos', '05663218907', 'k1b45t0s');

INSERT INTO Empregado (matricula, endereco_residencial, telefone_residencial, telefone_celular, nome, cpf, senha_acesso)
VALUES (6, 'Rota 01 Taubate', '36766676', '981245691', 'Bernardo Soares', '10078904506', 'b3rn4rd0');

INSERT INTO Empregado (matricula, endereco_residencial, telefone_residencial, telefone_celular, nome, cpf, senha_acesso)
VALUES (7, 'Rota 06 Rio das Ostras', '32111833', '981234432', 'Murilo Silva', '63008606992', 'mur1l0');

-- Produtos
INSERT INTO Produto (codigo_de_barras, preco_unitario, qtd_estoque, nome, area)
VALUES (12345, 1500.50, 100, 'Sofa cama bege', 'Moveis');

INSERT INTO Produto (codigo_de_barras, preco_unitario, qtd_estoque, nome, area)
VALUES (54321, 1230.50, 50, 'Armario cozinha inteirico', 'Moveis');

INSERT INTO Produto (codigo_de_barras, preco_unitario, qtd_estoque, nome, area)
VALUES (45132, 890.99, 100, 'Sofa preto', 'Moveis');

INSERT INTO Produto (codigo_de_barras, preco_unitario, qtd_estoque, nome, area)
VALUES (98765, 6700.90, 120, 'Iphone 13s', 'Eletronicos');

INSERT INTO Produto (codigo_de_barras, preco_unitario, qtd_estoque, nome, area)
VALUES (58697, 5670.90, 80, 'Samsung s42', 'Eletronicos');

INSERT INTO Produto (codigo_de_barras, preco_unitario, qtd_estoque, nome, area)
VALUES (17352, 2300.50, 10, 'Conjunto de facas de titanio', 'Utensilios');

INSERT INTO Produto (codigo_de_barras, preco_unitario, qtd_estoque, nome, area)
VALUES (12039, 120.90, 15, 'Porta Joias svarovski', 'Utensilios');

-- Vendas
INSERT INTO Venda (data_de_compra, qtd_vendida, matricula_empregado, codigo_de_barras)
VALUES (CURRENT_TIMESTAMP(), 1, 2, 12345);

INSERT INTO Venda (data_de_compra, qtd_vendida, matricula_empregado, codigo_de_barras)
VALUES (CURRENT_TIMESTAMP(), 1, 1, 54321);

INSERT INTO Venda (data_de_compra, qtd_vendida, matricula_empregado, codigo_de_barras)
VALUES (CURRENT_TIMESTAMP(), 5, 3, 45132);

INSERT INTO Venda (data_de_compra, qtd_vendida, matricula_empregado, codigo_de_barras)
VALUES (CURRENT_TIMESTAMP(), 3, 5, 98765);

INSERT INTO Venda (data_de_compra, qtd_vendida, matricula_empregado, codigo_de_barras)
VALUES (CURRENT_TIMESTAMP(), 1, 6, 58697);

INSERT INTO Venda (data_de_compra, qtd_vendida, matricula_empregado, codigo_de_barras)
VALUES (CURRENT_TIMESTAMP(), 2, 4, 17352);

INSERT INTO Venda (data_de_compra, qtd_vendida, matricula_empregado, codigo_de_barras)
VALUES (CURRENT_TIMESTAMP(), 10, 6, 12039);

-- Supervisiona
INSERT INTO supervisiona (cpf_gerente, matricula_empregado)
VALUES ('00133322299', 1);

INSERT INTO supervisiona (cpf_gerente, matricula_empregado)
VALUES ('00255577701', 2);

INSERT INTO supervisiona (cpf_gerente, matricula_empregado)
VALUES ('10346713912', 3);

INSERT INTO supervisiona (cpf_gerente, matricula_empregado)
VALUES ('31346713912', 4);

INSERT INTO supervisiona (cpf_gerente, matricula_empregado)
VALUES ('30346713912', 5);

INSERT INTO supervisiona (cpf_gerente, matricula_empregado)
VALUES ('10347613192', 6);

INSERT INTO supervisiona (cpf_gerente, matricula_empregado)
VALUES ('10364611411', 7);