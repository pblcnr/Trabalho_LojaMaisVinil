# Trabalho_LojaMaisVinil

# Cenário
Imagine uma loja de discos de vinil especializada que deseja modernizar sua gestão e proporcionar uma experiência aprimorada para seus clientes. O objetivo é criar um sistema abrangente que permita não apenas a venda de vinis, mas também o gerenciamento eficiente de clientes, funcionários, fornecedores e transações.

# Modelagem Conceitual
  Entidades Principais
    - Cliente
    - Funcionário
    - Fornecedor
    - Vinil
    - Transação

# Atributos
  Cliente

    ID_Cliente (Chave Primária)
    Nome
    Email
    CPF
    CEP
    Logradouro
    Numero
    Bairro
    Telefone
  Funcionario

    ID_Funcionario (Chave Primária)
    Nome
    Cargo
    Salario
    NumeroVendasRealizadas
  Fornecedor
  
    ID_Fornecedor (Chave Primária)
    Nome
    Endereco
    NumeroTelefone
  Vinil
  
    ID_Vinil (Chave Primária)
    Titulo
    Artista
    AnoLancamento
    Preco
  Transacao

    ID_Transacao (Chave Primária)
    DataHora
    MetodoPagamento
    ValorTotal
    ID_Cliente (Chave Estrangeira referenciando Cliente)
    ID_Funcionario (Chave Estrangeira referenciando Funcionario)
    ID_Fornecedor (Chave Estrangeira referenciando Fornecedor)
    
# Diagrama Entidade-Relacionamento
![der](https://github.com/pblcnr/Trabalho_LojaMaisVinil/assets/141787223/f914f785-b66c-4bff-88cd-77f43fbaa107)

# Modelagem Lógica
![modelo lógico](https://github.com/pblcnr/Trabalho_LojaMaisVinil/assets/141787223/678c9cd6-86ef-40d4-8c5f-8882b5146d98)

# Dados
  Todos os scripts de Dados estão no arquivo 'Loja MaisVinil.sql'
  
# CRUD
  Todos os Scripts de CRUD estão na pasta 'CRUD'

# Relatórios 
  Todos os Scripts de Relatórios estão na pasta 'Relatórios'
