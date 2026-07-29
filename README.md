## 📐 Modelagem do Banco de Dados

Antes da implementação do ambiente, foi realizada a modelagem conceitual e lógica do banco de dados utilizando **dbdiagram.io**, definindo as entidades, atributos, relacionamentos e regras de integridade que serão implementadas no PostgreSQL.

O modelo foi desenvolvido com foco em uma academia, contemplando o gerenciamento de clientes, professores, planos, matrículas, frequência, pagamentos, produtos e consumos.

### 🎥 Processo de Modelagem

> A animação abaixo mostra parte do processo de construção e evolução da modelagem do banco de dados.

<p align="center">
  <img src="./docs/assets/modelagem.gif" alt="Processo de modelagem do banco de dados" width="900"/>
</p>

### ✔ Objetivos da Modelagem

* Definir as entidades do sistema.
* Estabelecer os relacionamentos entre as tabelas.
* Garantir a integridade referencial através de chaves primárias e estrangeiras.
* Aplicar restrições (`NOT NULL`, `UNIQUE` e `CHECK`) para aumentar a consistência dos dados.
* Criar uma estrutura preparada para implantação no PostgreSQL e posterior monitoramento com Prometheus e Grafana.
