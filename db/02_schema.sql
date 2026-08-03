create table cliente (
	id_cliente int generated always as IDENTITY primary key,
	nome varchar(100) not null,
	cpf char(11) unique not null,
	telefone varchar(20),
	data_cadastro timestamp not null,
	status varchar(10) not null
);

create table categoria(
	id_categoria int generated always as IDENTITY primary key,
	nome varchar(50) not null,
	descricao varchar(255)
);

create table produto(
	id_produto int generated always as IDENTITY primary key,
	id_categoria int not null,
	nome varchar(100) not null,
	descricao text,
	preco decimal(10,2) not null check (preco >= 0),
	ativo boolean not null,
	data_cadastro timestamp not null
);

create table estoque(
	id_estoque int generated always as IDENTITY primary key,
	id_produto int not null,
	quantidade int not null check (quantidade >= 0),
	estoque_minimo int not null check (estoque_minimo >= 0),
	ultima_atualizacao timestamp not null
);

create table endereco(
	id_endereco int generated always as IDENTITY primary key,
	id_cliente int not null,
	cep char(8) not null,
	logradouro varchar(150) not null,
	numero varchar(10) not null,
	complemento varchar(100),
	bairro varchar(60) not null,
	cidade varchar(60) not null,
	estado char(2) not null
);

create table carrinho(
	id_carrinho int generated always as IDENTITY primary key,
	id_cliente int not null,
	data_criacao timestamp not null,
	status varchar(20) not null
);

create table item_carrinho(
	id_item_carrinho int generated always as IDENTITY primary key,
	id_carrinho int not null,
	id_produto int not null,
	quantidade int not null check (quantidade > 0),
	preco_unitario decimal(10,2) not null check (preco_unitario >= 0)
);

create table pedido(
	id_pedido int generated always as IDENTITY primary key,
	id_cliente int not null ,
	id_endereco int not null ,
	data_pedido timestamp not null,
	status varchar(20) not null,
	valor_total decimal(10,2) not null check (valor_total >= 0)
);

create table item_pedido(
	id_item_pedido int generated always as IDENTITY primary key,
	id_pedido int not null,
	id_produto int not null,
	quantidade int not null check (quantidade > 0),
	preco_unitario decimal(10,2) not null check (preco_unitario >= 0),
	subtotal decimal(10,2) not null check (subtotal >= 0)
);

create table pagamento(
	id_pagamento int generated always as IDENTITY primary key,
	id_pedido int not null,
	metodo_pagamento varchar(20) not null,
	valor decimal(10,2) not null check (valor >= 0),
	status varchar(20) not null,
	data_pagamento timestamp
);

create table avaliacao(
	id_avaliacao int generated always as IDENTITY primary key,
	id_cliente int not null,
	id_produto int not null,
	nota int not null check (nota >= 1 and nota <= 5),
	comentario text,
	data_avaliacao timestamp not null
);
