CREATE TABLE "cliente" (
  "id_cliente" serial PRIMARY KEY,
  "nome" varchar(100) NOT NULL,
  "cpf" char(11) UNIQUE NOT NULL,
  "telefone" varchar(20),
  "data_cadastro" timestamp NOT NULL,
  "status" varchar(10) NOT NULL
);

CREATE TABLE "categoria" (
  "id_categoria" serial PRIMARY KEY,
  "nome" varchar(50) NOT NULL,
  "descricao" varchar(255)
);

CREATE TABLE "produto" (
  "id_produto" serial PRIMARY KEY,
  "id_categoria" int NOT NULL,
  "nome" varchar(100) NOT NULL,
  "descricao" text,
  "preco" decimal(10,2) NOT NULL CHECK (preco >= 0),
  "ativo" boolean NOT NULL,
  "data_cadastro" timestamp NOT NULL
);

CREATE TABLE "estoque" (
  "id_estoque" serial PRIMARY KEY,
  "id_produto" int NOT NULL,
  "quantidade" int NOT NULL CHECK (quantidade >= 0),
  "estoque_minimo" int NOT NULL CHECK (estoque_minimo >= 0),
  "ultima_atualizacao" timestamp NOT NULL
);

CREATE TABLE "endereco" (
  "id_endereco" serial PRIMARY KEY,
  "id_cliente" int NOT NULL,
  "cep" char(8) NOT NULL,
  "logradouro" varchar(150) NOT NULL,
  "numero" varchar(10) NOT NULL,
  "complemento" varchar(100),
  "bairro" varchar(60) NOT NULL,
  "cidade" varchar(60) NOT NULL,
  "estado" char(2) NOT NULL
);

CREATE TABLE "carrinho" (
  "id_carrinho" serial PRIMARY KEY,
  "id_cliente" int NOT NULL,
  "data_criacao" timestamp NOT NULL,
  "status" varchar(20) NOT NULL
);

CREATE TABLE "itens_carrinho" (
  "id_item_carrinho" serial PRIMARY KEY,
  "id_carrinho" int NOT NULL,
  "id_produto" int NOT NULL,
  "quantidade" int NOT NULL CHECK (quantidade > 0),
  "preco_unitario" decimal(10,2) NOT NULL CHECK (preco_unitario >= 0)
);

CREATE TABLE "pedido" (
  "id_pedido" serial PRIMARY KEY,
  "id_cliente" int NOT NULL,
  "id_endereco" int NOT NULL,
  "data_pedido" timestamp NOT NULL,
  "status" varchar(20) NOT NULL,
  "valor_total" decimal(10,2) NOT NULL CHECK (valor_total >= 0)
);

CREATE TABLE "itens_pedido" (
  "id_item_pedido" serial PRIMARY KEY,
  "id_pedido" int NOT NULL,
  "id_produto" int NOT NULL,
  "quantidade" int NOT NULL CHECK (quantidade > 0),
  "preco_unitario" decimal(10,2) NOT NULL CHECK (preco_unitario >= 0),
  "subtotal" decimal(10,2) NOT NULL CHECK (subtotal >= 0)
);

CREATE TABLE "pagamento" (
  "id_pagamento" serial PRIMARY KEY,
  "id_pedido" int NOT NULL,
  "metodo_pagamento" varchar(20) NOT NULL,
  "valor" decimal(10,2) NOT NULL CHECK (valor >= 0),
  "status" varchar(20) NOT NULL,
  "data_pagamento" timestamp
);

CREATE TABLE "avaliacao" (
  "id_avaliacao" serial PRIMARY KEY,
  "id_cliente" int NOT NULL,
  "id_produto" int NOT NULL,
  "nota" int NOT NULL CHECK (nota >= 1 AND nota <= 5),
  "comentario" text,
  "data_avaliacao" timestamp NOT NULL
);

ALTER TABLE "produto" ADD FOREIGN KEY ("id_categoria") REFERENCES "categoria" ("id_categoria") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "estoque" ADD FOREIGN KEY ("id_produto") REFERENCES "produto" ("id_produto") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "endereco" ADD FOREIGN KEY ("id_cliente") REFERENCES "cliente" ("id_cliente") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "carrinho" ADD FOREIGN KEY ("id_cliente") REFERENCES "cliente" ("id_cliente") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "itens_carrinho" ADD FOREIGN KEY ("id_carrinho") REFERENCES "carrinho" ("id_carrinho") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "itens_carrinho" ADD FOREIGN KEY ("id_produto") REFERENCES "produto" ("id_produto") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "pedido" ADD FOREIGN KEY ("id_cliente") REFERENCES "cliente" ("id_cliente") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "pedido" ADD FOREIGN KEY ("id_endereco") REFERENCES "endereco" ("id_endereco") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "itens_pedido" ADD FOREIGN KEY ("id_pedido") REFERENCES "pedido" ("id_pedido") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "itens_pedido" ADD FOREIGN KEY ("id_produto") REFERENCES "produto" ("id_produto") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "pagamento" ADD FOREIGN KEY ("id_pedido") REFERENCES "pedido" ("id_pedido") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "avaliacao" ADD FOREIGN KEY ("id_cliente") REFERENCES "cliente" ("id_cliente") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "avaliacao" ADD FOREIGN KEY ("id_produto") REFERENCES "produto" ("id_produto") DEFERRABLE INITIALLY IMMEDIATE;
