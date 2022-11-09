## Entidades
- Gerente
  - cpf
  - email
  - area
  - nome
  - senha acesso
- Empregado
  - matricula
  - telefone residencial
  - telefone celular
  - nome
  - cpf
  - senha acesso
- Produto
  - codigo de barras
  - preco unitario
  - qtd estoque
  - nome
- Venda (Entidade associativa por meio da relação entre Empregado e Produto)
  - data de compra
  - quantidade vendida
  - matricula do empregado
  - codigo de barras

## Relacionamentos

Gerente _supervisiona_ Empregado
  - Um gerente pode supervisionar vários empregados e um empregado pode ser supervisionado por vários gerentes (n,n)

Empregado _Comercializa_ Produto
    - Um empregado pode comercializar vários produtos e vários produtos podem ser comercializados por vários empregados