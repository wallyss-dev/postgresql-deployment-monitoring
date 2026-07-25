CREATE TABLE "Clientes" (
  "ID_cliente" int PRIMARY KEY,
  "Nome_cliente" "Varchar(100)",
  "CPF" char(11),
  "Telefone" char(10),
  "ID_professor" int
);

CREATE TABLE "Professores" (
  "ID_professor" int PRIMARY KEY,
  "Nome_professor" varchar(100),
  "status_professor" varchar(20),
  "Especialidade" varchar(20)
);

CREATE TABLE "Pagamentos" (
  "ID_pagamento" int PRIMARY KEY,
  "ID_matricula" int,
  "Metodo_pagamento" varchar(15),
  "Data_pagamento" date,
  "status" varchar(25)
);

CREATE TABLE "Planos" (
  "ID_plano" int PRIMARY KEY,
  "Nome_plano" varchar(25),
  "Valor" decimal(10,2),
  "descricao" varchar(30)
);

CREATE TABLE "Matriculas" (
  "ID_matricula" int PRIMARY KEY,
  "ID_cliente" int,
  "ID_plano" INT,
  "Data_inicio" date,
  "Data_fim" date,
  "status" varchar(20)
);

CREATE TABLE "Produtos" (
  "ID_produto" int PRIMARY KEY,
  "Nome_produto" varchar(25),
  "Estoque" int,
  "preco" decimal(10,2)
);

CREATE TABLE "Consumos" (
  "ID_consumo" int PRIMARY KEY,
  "ID_cliente" int,
  "Data_consumo" date,
  "Valor_total" decimal(10,2)
);

CREATE TABLE "Itens_consumo" (
  "ID_item" int PRIMARY KEY,
  "ID_consumo" int,
  "ID_produto" int,
  "Quantidade" int,
  "preco" decimal(10,2)
);

ALTER TABLE "Professores" ADD FOREIGN KEY ("ID_professor") REFERENCES "Clientes" ("ID_professor") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "Clientes" ADD FOREIGN KEY ("ID_cliente") REFERENCES "Consumos" ("ID_cliente") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "Consumos" ADD FOREIGN KEY ("ID_consumo") REFERENCES "Itens_consumo" ("ID_consumo") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "Produtos" ADD FOREIGN KEY ("ID_produto") REFERENCES "Itens_consumo" ("ID_consumo") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "Clientes" ADD FOREIGN KEY ("ID_cliente") REFERENCES "Matriculas" ("ID_cliente") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "Planos" ADD FOREIGN KEY ("ID_plano") REFERENCES "Matriculas" ("ID_plano") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "Matriculas" ADD FOREIGN KEY ("ID_matricula") REFERENCES "Pagamentos" ("ID_matricula") DEFERRABLE INITIALLY IMMEDIATE;
