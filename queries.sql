-- Inserção de Dados e Queries

use ecommerce;

-- Dados Clients
INSERT INTO clients (Fname, Minit, Lname, Bhirthday, adress)
VALUES
('Marina', 'A', 'Souza', '1992-04-15', 'Rua das Acácias 120'),
('João', 'B', 'Pereira', '1988-09-02', 'Av. Brasil 450'),
('Fernanda', 'C', 'Oliveira', '1995-12-20', 'Rua Ipê Roxo 78'),
('Carlos', 'D', 'Santos', '1984-03-11', 'Rua Bento Gonçalves 505'),
('Ana', 'E', 'Martins', '1999-07-09', 'Av. Independência 900'),
('Ricardo', 'F', 'Almeida', '1987-10-25', 'Rua Monte Alegre 310'),
('Beatriz', 'G', 'Ferreira', '2000-01-30', 'Rua do Rosário 42'),
('Paulo', 'H', 'Vieira', '1993-06-18', 'Av. Central 1001'),
('Isabela', 'I', 'Nascimento', '1996-02-08', 'Rua Aurora 56'),
('Rafael', 'J', 'Barbosa', '1989-11-14', 'Rua Lago Azul 212');


INSERT INTO client_PF (idClient, CPF, birthday)
VALUES
(1, '12345678901', '1992-04-15'),
(2, '98765432100', '1988-09-02'),
(3, '65498732145', '1995-12-20'),
(4, '74125896312', '1984-03-11'),
(5, '85236974125', '1999-07-09'),
(6, '96325874133', '1987-10-25'),
(7, '32165498777', '2000-01-30');


INSERT INTO client_PJ (idClient, cnpj, corporate_name)
VALUES
(8, '12345678000199', 'Comercial Aurora LTDA'),
(9, '98765432000155', 'Tech Nova Soluções ME'),
(10, '45678912000166', 'Barbosa Importações EIRELI');




-- Dados Products
INSERT INTO Product (Pname, classification_kids, category, avaliação, size)
VALUES
('Mouse', false, 'Eletronico', 4.5, 'M'),
('Teclado', false, 'Eletronico', 4.2, 'M'),
('Camiseta', false, 'Vestuário', 4.8, 'G'),
('TênisRun', false, 'Calçados', 4.6, '42'),
('Boneca', true, 'Brinquedo', 4.9, 'P'),
('Carrinho', true, 'Brinquedo', 4.7, 'P'),
('Bolacha', false, 'Alimentos', 4.1, '200g'),
('Chocolate', false, 'Alimentos', 4.3, '100g'),
('Sandália', false, 'Calçados', 4.4, '38'),
('Jaqueta', false, 'Vestuário', 4.6, 'M');


-- Dados Orders
INSERT INTO Orders (idOrderClient, OrderStatus, OrderDescription, SandValue, PaymentCash)
VALUES
-- Marina (3 pedidos)
(1, 'Confirmado', 'Compra de eletrônicos', 25.90, false),
(1, 'Em Processamento', 'Compra de acessórios', 15.50, true),
(1, 'Confirmado', 'Compra de mousepad gamer', 12.50, true),

-- João (2 pedidos)
(2, 'Confirmado', 'Compra de livros', 18.90, false),
(2, 'Cancelado', 'Compra de utensílios domésticos', 22.30, false),

-- Fernanda (3 pedidos)
(3, 'Confirmado', 'Compra de vestuário', 28.40, false),
(3, 'Em Processamento', 'Compra de sandálias', 19.90, true),
(3, 'Confirmado', 'Compra de camiseta esportiva', 24.70, true),

-- Carlos (1 pedido)
(4, 'Confirmado', 'Compra de chocolates', 10.80, false),

-- Ana (1 pedido)
(5, 'Em Processamento', 'Compra de material escolar', 16.20, true),

-- Ricardo (1 pedido)
(6, 'Confirmado', 'Compra de ferramentas', 39.90, false),

-- Beatriz (1 pedido)
(7, 'Confirmado', 'Compra de brinquedos educativos', 27.50, true),

-- Paulo (2 pedidos)
(8, 'Confirmado', 'Compra de roupas infantis', 18.00, false),
(8, 'Em Processamento', 'Compra de carrinho infantil', 32.90, true),

-- Isabela (1 pedido)
(9, 'Confirmado', 'Compra de cosméticos', 22.10, false),

-- Rafael (1 pedido)
(10, 'Confirmado', 'Compra de utensílios de cozinha', 28.90, false);


-- Dados Product Order
INSERT INTO ProductOrder (idPOProduct, idPOorder, poQuantity, poStatus)
VALUES
-- Marina
(1, 1, 1, 'Disponível'),
(2, 2, 1, 'Disponível'),

-- João
(3, 3, 2, 'Disponível'),

-- Fernanda
(4, 4, 1, 'Disponível'),
(8, 5, 1, 'Disponível'),

-- Carlos
(9, 6, 3, 'Disponível'),

-- Ana
(5, 7, 1, 'Disponível'),

-- Ricardo
(6, 8, 1, 'Disponível'),

-- Beatriz
(7, 9, 1, 'Disponível'),

-- Paulo
(5, 10, 1, 'Disponível'),
(6, 11, 1, 'Disponível'),

-- Isabela
(2, 12, 1, 'Disponível'),

-- Rafael
(1, 13, 1, 'Disponível');


-- Dados Payments
INSERT INTO payments (idClient, idOrder, typePayment, card_name, card_number, card_expiration)
VALUES
-- Marina (3 pedidos - cartão)
(1, 1, 'Cartão', 'Marina Souza', '4111111111111111', '2027-05-01'),
(1, 2, 'Cartão', 'Marina Souza', '4111111111111111', '2027-05-01'),
(1, 3, 'Cartão', 'Marina Souza', '4111111111111111', '2027-05-01'),

-- João (2 pedidos - PIX)
(2, 4, 'Pix', NULL, NULL, NULL),
(2, 5, 'Pix', NULL, NULL, NULL),

-- Fernanda (3 pedidos - Boleto)
(3, 6, 'Boleto', NULL, NULL, NULL),
(3, 7, 'Boleto', NULL, NULL, NULL),
(3, 8, 'Boleto', NULL, NULL, NULL),

-- Carlos (1 pedido - Cartão)
(4, 9, 'Cartão', 'Carlos Santos', '4222222222222222', '2026-11-15'),

-- Ana (1 pedido - PIX)
(5, 10, 'Pix', NULL, NULL, NULL),

-- Ricardo (1 pedido - Boleto)
(6, 11, 'Boleto', NULL, NULL, NULL),

-- Beatriz (1 pedido - Cartão)
(7, 12, 'Cartão', 'Beatriz Ferreira', '4333333333333333', '2028-03-20'),

-- Paulo (2 pedidos - Pix)
(8, 13, 'Pix', NULL, NULL, NULL),
(8, 14, 'Pix', NULL, NULL, NULL),

-- Isabela (1 pedido - Boleto)
(9, 15, 'Boleto', NULL, NULL, NULL),

-- Rafael (1 pedido - Cartão)
(10, 16, 'Cartão', 'Rafael Barbosa', '4444444444444444', '2029-09-10');


-- Dados Produtos Storage
INSERT INTO ProductStorage (StorageLocation, Quantity)
VALUES
('Depósito Central A1', 100),
('Depósito Central A2', 150),
('Centro de Distribuição Leste', 80),
('Centro de Distribuição Oeste', 60),
('Estoque Loja Física 01', 40);


-- Dados Supplier
INSERT INTO Supplier (SocialName, CNPJ, Contact)
VALUES
('Comercial Brasil LTDA', '12345678000199', '31999887766'),
('Distribuidora Global SA', '99887766000111', '11988776655'),
('Importadora Nova Era ME', '55667788000155', '21955667788');



-- Dados Seller
INSERT INTO Seller (SocialName, AbstractName, CNPJ, CPF, Location, Contact)
VALUES
('Loja Tech Online', 'TechOn', '11223344000122', NULL, 'São Paulo - SP', '11988887777'),
('Moda & Estilo LTDA', 'ModaEstilo', '22334455000133', NULL, 'Belo Horizonte - MG', '31977776666'),
('João Pereira ME', NULL, NULL, '12345678901', 'Rio de Janeiro - RJ', '21999998888');


-- Dados Product Seller
INSERT INTO ProductSeller (idPSeller, idPProduct, Quantity)
VALUES
(1, 1, 50),
(1, 2, 40),
(1, 7, 30),
(1, 8, 25),
(2, 3, 35),
(2, 4, 20),
(2, 9, 22),
(2, 10, 18),
(3, 5, 15),
(3, 6, 12);


-- Dados Delivery
INSERT INTO delivery
(idOrder, tracking_code, status_delivery, ship_date, delivery_date)
VALUES
-- Marina (1,2,3)
(1, 'BR001M123456', 'Entregue',     '2025-01-18', '2025-01-21'),
(2, 'BR001M123457', 'Em Trânsito', '2025-01-20', NULL),
(3, 'BR001M123458', 'Enviado',     '2025-01-22', NULL),

-- João (4,5)
(4, 'BR002J223456', 'Entregue',    '2025-01-17', '2025-01-20'),
(5, 'BR002J223457', 'Em Trânsito','2025-01-21', NULL),

-- Fernanda (6,7,8)
(6, 'BR003F323456', 'Enviado',     '2025-01-22', NULL),
(7, 'BR003F323457', 'Entregue',    '2025-01-19', '2025-01-22'),
(8, 'BR003F323458', 'Separando',   NULL,         NULL),

-- Carlos (9)
(9, 'BR004C423456', 'Entregue',    '2025-01-16', '2025-01-19'),

-- Ana (10)
(10, 'BR005A523456', 'Cancelado',  NULL,         NULL),

-- Ricardo (11)
(11, 'BR006R623456', 'Em Trânsito','2025-01-23', NULL),

-- Beatriz (12)
(12, 'BR007B723456', 'Enviado',    '2025-01-22', NULL),

-- Paulo (13)
(13, 'BR008P823456', 'Entregue',   '2025-01-18', '2025-01-21');


-- Dados Product Supplier
INSERT INTO ProductSupplier (idpsSupplier, idpsProduct, Quantity)
VALUES
-- Comercial Brasil LTDA
(1, 1, 80),   -- Mouse
(1, 2, 60),   -- Teclado
(1, 8, 50),   -- Chocolate

-- Distribuidora Global SA
(2, 3, 70),   -- Camiseta
(2, 9, 45),   -- Sandália
(2, 10, 40),  -- Jaqueta

-- Importadora Nova Era ME
(3, 5, 30),   -- Boneca
(3, 6, 25),   -- Carrinho
(3, 7, 90);   -- Bolacha


-- Dados Storage Location
INSERT INTO StorageLocation (idLProduct, idLStorage, Location)
VALUES
-- Depósito Central
(1, 1, 'Depósito Central A1'),
(2, 1, 'Depósito Central A1'),
(3, 1, 'Depósito Central A2'),
(4, 1, 'Depósito Central A2'),

-- Centro de Distribuição Leste
(5, 2, 'CD Leste - Corredor 3'),
(6, 2, 'CD Leste - Corredor 4'),

-- Centro de Distribuição Oeste
(7, 3, 'CD Oeste - Área Fria'),
(8, 3, 'CD Oeste - Área Fria'),

-- Loja Física
(9, 4, 'Loja Física 01 - Vitrine'),
(10, 4, 'Loja Física 01 - Estoque Interno');



-- Perguntas/Consultas Desafio

-- Quantos pedidos cada cliente fez?
SELECT 
    c.idClient,
    c.fName,
    c.lName,
    COUNT(o.idOrder) AS TotalPedidos
FROM Clients c
LEFT JOIN Orders o 
    ON c.idClient = o.idOrderClient
GROUP BY c.idClient, c.fName, c.lName;

-- Recuperação de pedidos com produtos associados
SELECT 
    c.fName AS Cliente,
    o.idOrder,
    o.OrderStatus,
    p.Pname AS Produto,
    po.poQuantity AS Quantidade
FROM Clients c
INNER JOIN Orders o 
    ON c.idClient = o.idOrderClient
INNER JOIN ProductOrder po 
    ON po.idPOOrder = o.idOrder
INNER JOIN Product p 
    ON p.idProduct = po.idPOProduct;
    
    -- Relação de produtos, fornecedores e estoque
    SELECT 
    sp.SocialName AS Fornecedor,
    p.Pname AS Produto,
    ps.Quantity AS QuantidadeFornecedor
FROM ProductSupplier ps
INNER JOIN Supplier sp 
    ON ps.idpsSupplier = sp.idSupplier
INNER JOIN Product p 
    ON ps.idpsProduct = p.idProduct
ORDER BY sp.SocialName, p.Pname;

-- Relação de fornecedores e nomes de produtos
SELECT 
    sp.SocialName AS Fornecedor,
    p.Pname AS Produto
FROM ProductSupplier ps
JOIN Supplier sp 
    ON ps.idpsSupplier = sp.idSupplier
JOIN Product p 
    ON ps.idpsProduct = p.idProduct;
    
    


