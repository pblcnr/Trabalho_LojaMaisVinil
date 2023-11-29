CREATE DATABASE Loja_MaisVinil;
USE Loja_MaisVinil
CREATE TABLE Vinil (
ID_Vinil			INT		PRIMARY KEY,
Titulo				VARCHAR(255),
Artista 			VARCHAR(255),
AnoLancamento		INT,
Preco				DECIMAL(10, 2),
Condicao			VARCHAR(50)
);

INSERT INTO Vinil (ID_Vinil, Titulo, Artista, AnoLancamento, Preco, Condicao)
VALUES (2, 'The Dark Side of the Moon', 'Pink Floyd', 1973, 24.99, 'Novo');

INSERT INTO Vinil (ID_Vinil, Titulo, Artista, AnoLancamento, Preco, Condicao)
VALUES (3, 'The Dark Side of the Moon', 'Pink Floyd', 1973, 24.99, 'Usado');

USE Loja_MaisVinil;

CREATE TABLE Cliente (
ID_Cliente 			INT PRIMARY KEY,
Nome				VARCHAR(255),
CEP					VARCHAR(9),
Logradouro			VARCHAR(200),
Numero				VARCHAR(10),
Bairro				VARCHAR(30),
Email				VARCHAR(255),
Telefone			VARCHAR(15),
CPF					VARCHAR(14)	UNIQUE
);

CREATE TABLE Funcionario (
ID_Funcionario 			INT PRIMARY KEY,
Nome					VARCHAR(255),
Cargo					VARCHAR(50),
Salario					DECIMAL(10, 2),
NumeroVendasRealizadas	INT 
);

CREATE TABLE Fornecedor (
ID_Fornecedor		INT PRIMARY KEY,
Nome				VARCHAR(255),
CEP					VARCHAR(9),
Logradouro			VARCHAR(200),
Numero				VARCHAR(10),
Bairro				VARCHAR(30),
Telefone			VARCHAR(20),
Email				VARCHAR(255)
);

CREATE TABLE Transacao (
ID_Transacao 		INT PRIMARY KEY,
DataHora			DATETIME,
MetodoPagamento		VARCHAR(50),
ValorTotal			DECIMAL(10, 2),
ID_Cliente			INT,
ID_Funcionario		INT,
FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente),
FOREIGN KEY (ID_Funcionario) REFERENCES Funcionario(ID_Funcionario)
);

CREATE TABLE Lista_Vinis_Comprados (
ID_Transacao 	INT,
ID_Vinil		INT,
PRIMARY KEY (ID_Transacao, ID_Vinil),
FOREIGN KEY (ID_Transacao) REFERENCES Transacao(ID_Transacao),
FOREIGN KEY (ID_Vinil) REFERENCES Vinil(ID_Vinil)
);

CREATE TABLE Lista_Vinis_Fornecidos (
ID_Fornecedor	INT,
ID_Vinil		INT,
PRIMARY KEY (ID_Fornecedor, ID_Vinil),
FOREIGN KEY (ID_Fornecedor) REFERENCES Fornecedor(ID_Fornecedor),
FOREIGN KEY (ID_Vinil) REFERENCES Vinil(ID_Vinil)
);

INSERT INTO Vinil (ID_Vinil, Titulo, Artista, AnoLancamento, Preco, Condicao) VALUES 
(4, 'Alfredo', 'Freddie Gibbs', 2020, 54.99, 'Novo'),
(5, 'Alfredo', 'Freddie Gibbs', 2020, 24.99, 'Usado'),
(6, 'Alive III', 'Kiss', 1993, 54.99, 'Novo'),
(7, 'Alive III', 'Kiss', 1993, 24.99, 'Usado'),
(8, 'Mirage', 'Camel', 1974, 54.99, 'Novo'),
(9, 'Mirage', 'Camel', 1974, 24.99, 'Usado'),
(10, 'To Pimp a Butterfly', 'Kendrick Lamar', 2015, 54.99, 'Novo'),
(11, 'To Pimp a Butterfly', 'Kendrick Lamar', 2015, 24.99, 'Usado'),
(12, 'In Rainbows', 'Radiohead', 2007, 54.99, 'Novo'),
(13, 'In Rainbows', 'Radiohead', 2007, 24.99, 'Usado'),
(14, 'Madvillainy', 'Madvillain', 2004, 54.99, 'Novo'),
(15, 'Madvillainy', 'Madvillain', 2004, 24.99, 'Usado'),
(16, 'Paranoid', 'Black Sabbath', 1970, 54.99, 'Novo'),
(17, 'Paranoid', 'Black Sabbath', 1970, 24.99, 'Usado'),
(18, 'Unknown Pleasures', 'Joy Division', 1979, 54.99, 'Novo'),
(19, 'Unknown Pleasures', 'Joy Division', 1979, 24.99, 'Usado'),
(1, 'Blonde', 'Frank Ocean', 2016, 54.99, 'Novo'),
(20, 'Blonde', 'Frank Ocean', 2016, 24.99, 'Usado');

INSERT INTO Cliente (ID_Cliente, Nome, CEP, Logradouro, Numero, Bairro, Email, Telefone, CPF) VALUES
(1, 'João Silva', '12345-678', 'Rua A', '123', 'Jardins', 'joao@email.com', '9123-4567', '123.456.789-01'),
(2, 'Maria Oliveira', '12346-789', 'Av B', '456', 'Jardins', 'maria@email.com', '9987-6543', '759.367.010-42'),
(3, 'Ernesto Laele de Paula', '69042-440', 'Beco Meatinga', '789', 'Alvorada', 'ernesto@email.com', '2326-7340', '133.636.540-49'),
(4, 'Pietro Fazoelli Franco', '57072-290', 'Rua José Maria Barreto Galvão', '120', 'Cidade Universitária', 'pietro@email.com', '2450-8951', '747.762.220-43'),
(5, 'Francisco Reusebha Aguiar', '59150-520', 'Rua Waldemir Wanderley dos Santos', '757', 'Nova Parnamirim', 'francisco@email.com', '3842-7182', '332.412.450-63'),
(6, 'Renato Armando Borabilio', '57030-030', 'Rua Araújo Bivar', '875', 'Pajuçara', 'renato@email.com', '2591-7777', '142.030.200-00'),
(7, 'Corinthienzo Vieira de Paula', '69314-238', 'Rua Fênix', '227', 'Jardim Primavera', 'corinthienzo@email.com', '3783-7359', '565.544.190-04'),
(8, 'Jacques Modesto Pinto', '65025-580', 'Travessa Manoel Jansen Ferreira', '423', 'Centro', 'jacques@email.com', '3264-5754', '587.651.820-49'),
(9, 'José Leleco da Silva', '72725-128', 'Quadra Quadra 1 Chácara 4', '885', 'Veredas', 'jose@email.com', '3117-4034', '448.855.260-94'),
(10, 'Maria José Placarlo Fernandes', '49170-971', 'Rua Principal', '304', 'Centro', 'marijose@email.com', '3100-4111', '456.174.200-03'),
(11, 'Gabriel Eduardo Futiras Macedo', '30620-330', 'Avenida Olinto Meireles', '27', 'Milionários', 'gabriel@email.com', '3095-3878', '026.430.390-33'),
(12, 'Seplacarmem Vieira de Souza', '68507-441', 'Quadra Treze', '537', 'Nova Marabá', 'seplacarmen@email.com', '3774-2554', '884.089.520-56'),
(13, 'João De Souza Teei', '78144-022', 'Rua Parecis', '469', 'Petrópolis', 'joaoteei@email.com', '2313-5235', '106.014.950-80'),
(14,'Jailson Marques Siqueira', '67146-125', 'Rua Xavante', '663', 'Curuçambá', 'jailson@email.com', '2608-4139', '651.169.270-16'),
(15, 'Trevis Escorte de Paula Maria', '73753-019', 'Quadra 1', '371', 'Setor Sul', 'trevis@email.com', '3475-5115', '055.074.350-22'),
(16, 'Gustavo Tceno dos Santos', '94470-370', 'Rua São Francisco', '668', 'Centro', 'gustavo@email.com', '3343-4989', '554.422.420-04'),
(17, 'Asape Roque Ribeiro', '32113-400', 'Rua Manoel Brandão', '651', 'Ressaca', 'asape@email.com', '2766-7857', '059.971.850-10'),
(18, 'Carimbo Miguel', '12320-090', 'Rua Benjamim Arice', '436', 'Cidade Jardim', 'carimbo@email.com', '3555-0375', '935.832.120-29'),
(19, 'Gabriel de Arrascaeta Cano Henrique', '65059-570', 'Travessa Fé em Deus', '243', 'João de Deus', 'gabrielarrasca@email.com', '3765-7573', '580.903.430-66'),
(20, 'Wolmir Mattar Ferreira', '59159-310', 'Rua Pedra Azul', '959', 'Parque das Nações', 'wolmirmattar@email.com', '2455-2291', '627.936.050-42');

SELECT * FROM Cliente;

INSERT INTO Funcionario (ID_Funcionario, Nome, Cargo, Salario, NumeroVendasRealizadas) VALUES
(1, 'Carlos Souza', 'Vendedor', 3000.00, 10),
(2, 'Ana Santos', 'Caixa', 2500.00, 8),
(3, 'Rafael Oliveira', 'Gerente de Vendas', 4000.00, 15),
(4, 'Julia Lima', 'Atendente', 2200.00, 6),
(5, 'Diego Martins', 'Vendedor', 2800.00, 12),
(6, 'Fernanda Costa', 'Caixa', 2400.00, 9),
(7, 'Lucas Pereira', 'Vendedor', 3200.00, 11),
(8, 'Mariana Silva', 'Gerente de Loja', 4500.00, 18),
(9, 'Rodrigo Santos', 'Atendente', 2300.00, 7),
(10, 'Camila Oliveira', 'Vendedor', 2900.00, 13),
(11, 'Pedro Souza', 'Caixa', 2600.00, 10),
(12, 'Amanda Costa', 'Atendente', 2100.00, 5),
(13, 'Gabriel Lima', 'Vendedor', 3100.00, 14),
(14, 'Isabela Martins', 'Caixa', 2700.00, 8),
(15, 'Lucas Oliveira', 'Vendedor', 3300.00, 16),
(16, 'Juliana Santos', 'Gerente de Vendas', 4200.00, 20),
(17, 'André Costa', 'Atendente', 2000.00, 4),
(18, 'Laura Lima', 'Vendedor', 3000.00, 15),
(19, 'Eduardo Pereira', 'Caixa', 2300.00, 7),
(20, 'Viviane Oliveira', 'Atendente', 1900.00, 3);

SELECT * FROM Funcionario;

INSERT INTO Fornecedor (ID_Fornecedor, Nome, CEP, Logradouro, Numero, Bairro, Telefone, Email) VALUES
(1, 'Distribuidora ABC', '53421-333', 'Rua da Distribuição', '123', 'Jardim São Pedro', '3111-2207', 'distribuidoraabc@email.com'),
(2, 'Vinis & Cia', '25940-238', 'Avenida dos Vinis', '456', 'Conjunto Ouricurí', '3627-8482', 'viniscia@email.com'),
(3, 'Sons do Passado', '72261-024', 'Travessa Nostalgia', '789', 'Raiar do Sol', '2861-3162', 'sonsdopassado@email.com'),
(4, 'Melodia Eterna', '69900-294', 'Rua da Melodia', '101', 'Conjunto Procon', '3737-7463', 'melodiaeterna@email.com'),
(5, 'Ritmo Contagiante', '70352-510', 'Avenida do Ritmo', '202', 'Residencial Serra Azul II', '2961-2859', 'ritmocontagiante@email.com'),
(6, 'Harmonia Musical', '67020-634', 'Rua da Harmonia', '303', 'Cidade Universitária', '2243-4184', 'harmoniamusical@email.com'),
(7, 'Acordes Mágicos', '66815-886', 'Avenida dos Acordes', '404', 'Presidente Vargas', '2227-9979', 'acordesmagicos@email.com'),
(8, 'Canções Celestiais', '77001-586', 'Rua das Canções', '505', 'Ponto Chic', '3813-4936', 'cancoescelestiais@email.com'),
(9, 'Vibrações Sonoras', '65090-662', 'Avenida das Vibrações', '606', 'Centro', '2483-4563', 'vibracoesonoras@email.com'),
(10, 'Eco Vinil', '26041-460', 'Rua do Eco', '707', 'Igapó', '2821-6131', 'ecovinil@email.com'),
(11, 'Sinfonia Melódica', '29141-866', 'Avenida da Sinfonia', '808', 'Cohama', '2550-6145', 'sinfoniamelodica@email.com'),
(12, 'Tempo & Ritmo', '29203-020', 'Rua do Tempo', '909', 'Portal da Amazônia', '2069-1152', 'temporitmo@email.com'),
(13, 'Harpa & Vinil', '77403-315', 'Avenida da Harpa', '010', 'Pechincha', '2634-2182', 'harpavinil@email.com'),
(14, 'Cantigas Vintage', '57018-150', 'Rua das Cantigas', '111', 'Santo Antônio', '3254-7082', 'cantigasvintage@email.com'),
(15, 'Seresta Musical', '13050-906', 'Avenida da Seresta', '212', 'Jardim Brasil', '2787-0037', 'serestamusical@email.com'),
(16, 'Clássicos do Vinil', '13050-906', 'Rua dos Clássicos', '313', 'Chácaras Trevo', '3682-6526', 'classicosvinil@email.com'),
(17, 'Groove Sideral', '68500-460', 'Avenida do Groove', '414', 'Simon Bolivar', '3865-6054', 'groovesideral@email.com'),
(18, 'Música Nostálgica', '78089-030', 'Rua da Nostalgia', '515', 'Estiva', '2124-6893', 'musicanostalgica@email.com'),
(19, 'Acústico Charmoso', '29317-458', 'Avenida Acústica', '616', 'Enseada do Suá', '2175-6214', 'acusticocharmoso@email.com'),
(20, 'Vinil Aurora', '77063-358', 'Rua Aurora', '717', 'Senador Hélio Campos', '2998-8723', 'vinilaurora@email.com');


INSERT INTO Transacao (ID_Transacao, DataHora, MetodoPagamento, ValorTotal, ID_Cliente, ID_Funcionario) VALUES
(1, '2022-01-15 10:30:00', 'Cartão de Crédito', 75.00, 1, 1),
(2, '2022-02-20 14:45:00', 'Dinheiro', 50.00, 2, 2),
(3, '2022-03-25 18:20:00', 'Cartão de Débito', 120.00, 3, 3),
(4, '2022-04-10 11:15:00', 'Boleto Bancário', 90.00, 4, 4),
(5, '2022-05-05 16:40:00', 'Cartão de Crédito', 60.00, 5, 5),
(6, '2022-06-12 12:00:00', 'Dinheiro', 30.00, 6, 6),
(7, '2022-07-18 09:45:00', 'Cartão de Crédito', 85.00, 7, 7),
(8, '2022-08-22 17:30:00', 'Boleto Bancário', 110.00, 8, 8),
(9, '2022-09-02 14:00:00', 'Cartão de Débito', 70.00, 9, 9),
(10, '2022-10-10 10:10:00', 'Dinheiro', 40.00, 10, 10),
(11, '2022-11-15 15:20:00', 'Cartão de Crédito', 95.00, 11, 11),
(12, '2022-12-01 08:00:00', 'Boleto Bancário', 80.00, 12, 12),
(13, '2023-01-05 13:30:00', 'Dinheiro', 55.00, 13, 13),
(14, '2023-02-14 19:00:00', 'Cartão de Débito', 100.00, 14, 14),
(15, '2023-03-20 16:15:00', 'Boleto Bancário', 75.00, 15, 15),
(16, '2023-04-25 11:45:00', 'Cartão de Crédito', 65.00, 16, 16),
(17, '2023-05-30 14:50:00', 'Dinheiro', 35.00, 17, 17),
(18, '2023-06-05 12:30:00', 'Cartão de Débito', 110.00, 18, 18),
(19, '2023-07-10 09:00:00', 'Boleto Bancário', 50.00, 19, 19),
(20, '2023-08-15 15:10:00', 'Cartão de Crédito', 120.00, 20, 20);

INSERT INTO Lista_Vinis_Comprados (ID_Transacao, ID_Vinil)
VALUES
(1, 1), 
(1, 3), 
(1, 5), 
(1, 7), 
(2, 10), 
(2, 12), 
(2, 14), 
(3, 2), 
(3, 4), 
(3, 6),
(4, 8), 
(4, 11), 
(5, 15), 
(5, 17), 
(6, 9), 
(6, 13), 
(7, 16), 
(7, 18), 
(8, 20), 
(9, 19);

INSERT INTO Lista_Vinis_Fornecidos (ID_Fornecedor, ID_Vinil)
VALUES
(1, 1), 
(1, 3), 
(2, 6), 
(2, 8), 
(3, 10), 
(3, 12), 
(4, 14), 
(4, 16), 
(5, 18), 
(5, 20),
(6, 2), 
(6, 4), 
(7, 6), 
(7, 8), 
(8, 10), 
(8, 12), 
(9, 14), 
(9, 16), 
(10, 18), 
(10, 20);

SELECT * FROM Vinil;
SELECT * FROM Cliente;
SELECT * FROM Fornecedor;
SELECT * FROM Funcionario;
SELECT * FROM Transacao;
SELECT * FROM Lista_Vinis_Comprados;
SELECT * FROM Lista_Vinis_Fornecidos;

SELECT Titulo FROM Vinil;

SELECT Nome FROM Cliente;

SELECT Logradouro FROM Fornecedor;

SELECT Salario FROM Funcionario;

SELECT MetodoPagamento FROM Transacao;

SELECT ID_Transacao, DataHora FROM Transacao;

SELECT ID_Transacao, DataHora FROM Transacao WHERE ID_Cliente = 15;

SELECT ID_Transacao, DataHora FROM Transacao WHERE MetodoPagamento = 'Boleto Bancário';

SELECT ID_Transacao, DataHora FROM Transacao WHERE ID_Funcionario = 14;

SELECT Vinil.Titulo AS NomeDoVinil, Transacao.ID_Transacao, Transacao.DataHora, Transacao.ValorTotal 
FROM Transacao 
JOIN Lista_Vinis_Comprados ON Transacao.ID_Transacao = Lista_Vinis_Comprados.ID_Transacao 
JOIN Vinil ON Lista_Vinis_Comprados.ID_Vinil = Vinil.ID_Vinil 
WHERE Lista_Vinis_Comprados.ID_Vinil = 17;