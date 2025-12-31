-- criação de banco de dados para o cenário de E-commerce 
create database ecommerce;
use ecommerce;

-- criar tabelas clients
create table clients(
       idClient int auto_increment primary key,
       Fname varchar(10),
       Minit char(3),
       Lname varchar(20),
       Bhirthday date,
       adress varchar(30)
);
alter table Clients auto_increment=1;

create table client_PJ (
    idclient int primary key,
    cnpj char(14) not null,
    corporate_name varchar(100),
	constraint fk_client_pj_client foreign key (idclient) references clients(idClient),
    constraint unique_cnpj_client unique (CNPJ)
);

create table client_PF (
    idclient int primary key,
    CPF char(11) not null,
    birthday date,
    constraint fk_client_pf_client foreign key (idclient) references clients(idclient),
    constraint unique_cpf_client unique (CPF)
);


-- criar tabela product
create table Product(
       idProduct int auto_increment primary key,
       Pname varchar(10) not null,
       classification_kids bool default false,
       category enum('Eletronico','Vestuário','Brinquedo','Calçados','Alimentos') not null,
       avaliação float default 0,
       size varchar(10)
);


-- criar tabela pedido
create table Orders(
       idOrder int auto_increment primary key,
       idOrderClient int,
       OrderStatus enum('Cancelado','Confirmado','Em Processamento') default 'Em Processamento',
       OrderDescription varchar(255),
       SandValue float(20) default 10,
       PaymentCash bool default false,
       idPayment int unique,
	   constraint fk_Orders_Client foreign key(idOrderClient) references clients(idClient)
);


-- criar tabela payments
create table payments (
    idPayment int auto_increment primary key,
    idClient int not null,
    idOrder int not null,
    typePayment enum('Cartão','Pix','Boleto','Dois Cartões') not null,
    card_name varchar(30),
    card_number varchar(18),
    card_expiration date,
    constraint fk_payment_client foreign key (idClient) references clients(idClient),
    constraint fk_payment_order foreign key (idOrder) references Orders(idOrder)
);


-- criar tabela product storage
create table ProductStorage(
       idProductStorage int auto_increment primary key,
       StorageLocation varchar(255),
       Quantity int default 0
);

-- criar tabela supplier
create table Supplier(
       idSupplier int auto_increment primary key,
       SocialName  varchar(255) not null,
       CNPJ char(14) not null,
       Contact char(11) not null,
       Constraint unique_supplier unique(CNPJ)
);


-- criar tabela seller
create table Seller(
       idSeller int auto_increment primary key,
       SocialName  varchar(255) not null,
       AbstractName varchar(255),
       CNPJ char(14),
       CPF Char(11),
       Location varchar(255),
       Contact char(11) not null,
       constraint unique_cnpj_seller unique(CNPJ),
       constraint unique_cpf_seller unique(CPF)
);


-- criar tabela product seller
create table ProductSeller(
       idPSeller int,
       idPProduct int,
       Quantity int default 1,
       primary key (idPSeller, idPProduct),
       constraint fk_product_seller foreign key(idPSeller) references Seller(idSeller),
       constraint fk_product_product foreign key(idPProduct) references Product(idProduct)
);

-- criar tabela product oder
create table ProductOrder(
       idPOproduct int,
       idPOorder int,
       poQuantity int default 1,
       poStatus enum('Disponível','Sem Estoque') default 'Disponível',
       primary key (idPOproduct, idPOorder),
       Constraint fk_productorder_seller foreign key(idPOproduct) references product(idProduct),
       Constraint fk_productorder_product foreign key(idPOorder) references orders(idOrder)
);


-- criar tabela storage location
create table StorageLocation(
       idLProduct int,
       idLStorage int,
       Location varchar(255) not null,
       primary key (idLProduct, idLStorage),
       Constraint fk_storage_location_product foreign key(idLProduct) references product(idProduct),
       Constraint fk_storage_location_storage  foreign key(idLStorage) references productStorage(idProductStorage)
);

-- criar tabela product supplier
create table ProductSupplier(
       idpsSupplier int,
       idpsProduct int,
       Quantity int not null,
       primary key (idpsSupplier, idpsProduct),
       Constraint fk_product_supplier_supplier foreign key(idpsSupplier) references supplier(idsupplier),
       Constraint fk_product_supplier_product  foreign key(idpsProduct) references product(idProduct)
);


 -- criar tabela de delivery
create table delivery (
    iddelivery int auto_increment primary key,
    idorder int not null unique,
    tracking_code varchar(45),
    status_delivery varchar(45),
    ship_date date,
    delivery_date date,
    constraint fk_delivery_order foreign key (idOrder) references Orders(idOrder)
);
