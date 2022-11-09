--Script de alteração (inserção) nas tabelas

-- Gerentes
INSERT INTO Gerente (cpf, email, area, nome, senha_acesso)
VALUES ('00133322299', 'alan_gerente@loja.com', 'Moveis', 'Alan Silva', 'j&mn8*k');

INSERT INTO Gerente (cpf, email, area, nome, senha_acesso)
VALUES ('00255577701', 'joao_gerente@loja.com', 'Moveis', 'Joao Alves', 'q@ve6&l');

INSERT INTO Gerente (cpf, email, area, nome, senha_acesso)
VALUES ('10346713912', 'manuela_gerente@loja.com', 'Moveis', 'Manuela Santos', 'l(0k(x)a)');

-- Empregados
INSERT INTO Empregado (matricula, endereco_residencial, telefone_residencial, telefone_celular, nome, cpf, senha_acesso)
VALUES (1, 'Rua das oliveiras 32 Sydney', '33331222', '9888898888', 'Julio Rocha', '01230450671', '@julinho02');

INSERT INTO Empregado (matricula, endereco_residencial, telefone_residencial, telefone_celular, nome, cpf, senha_acesso)
VALUES (2, 'P Sherman 42 Wallaby way Sydney', '32231221', '989998908', 'Vinicius Teles', '10322150671', '@vinas13');

INSERT INTO Empregado (matricula, endereco_residencial, telefone_residencial, telefone_celular, nome, cpf, senha_acesso)
VALUES (3, 'Rota 66 Arizona', '32569876', '987788678', 'Cassio Pedroza', '11566711611', 'cas1u5');

-- Produtos
INSERT INTO Produto (codigo_de_barras, preco_unitario, qtd_estoque, nome)
VALUES (12345, 1500.50, 100, 'Sofa cama bege');

INSERT INTO Produto (codigo_de_barras, preco_unitario, qtd_estoque, nome)
VALUES (54321, 1230.50, 50, 'Armario cozinha inteirico');

INSERT INTO Produto (codigo_de_barras, preco_unitario, qtd_estoque, nome)
VALUES (45132, 890.99, 100, 'Sofa cama bege');

-- Vendas
INSERT INTO Venda (data_de_compra, qtd_vendida, matricula_empregado, codigo_de_barras)
VALUES (GETDATE(), 1, 2, 54321);

INSERT INTO Venda (data_de_compra, qtd_vendida, matricula_empregado, codigo_de_barras)
VALUES (GETDATE(), 1, 1, 12345);

INSERT INTO Venda (data_de_compra, qtd_vendida, matricula_empregado, codigo_de_barras)
VALUES (GETDATE(), 5, 3, 45132);

-- Supervisiona
INSERT INTO supervisiona (cpf_gerente, matricula_empregado)
VALUES ('00255577701', 1);

INSERT INTO supervisiona (cpf_gerente, matricula_empregado)
VALUES ('10346713912', 2);

INSERT INTO supervisiona (cpf_gerente, matricula_empregado)
VALUES ('00133322299', 3);