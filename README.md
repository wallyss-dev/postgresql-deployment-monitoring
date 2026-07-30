<div align="center">

# 🐘 PostgreSQL Linux Database Administration

### Implantação, Administração e Monitoramento de um Banco de Dados PostgreSQL

Projeto desenvolvido para a disciplina de **Administração de Banco de Dados**, contemplando desde a modelagem até o monitoramento de um ambiente PostgreSQL em um servidor Linux.

<img src="./docs/assets/modelagem.gif" width="850">

</div>

---

## 📖 Sobre o Projeto

Este projeto tem como objetivo implantar um ambiente completo de banco de dados PostgreSQL em um **Ubuntu Server** executando em uma máquina virtual.

Durante o desenvolvimento foram realizadas todas as etapas normalmente executadas por um Administrador de Banco de Dados (DBA), incluindo:

- Planejamento da solução;
- Modelagem do banco de dados;
- Implantação do PostgreSQL;
- Configuração do servidor Linux;
- Configuração de acesso remoto;
- Administração do banco;
- Monitoramento utilizando Prometheus e Grafana;
- Documentação completa do processo.

O banco de dados modela uma **academia**, permitindo o gerenciamento de clientes, professores, planos, matrículas, produtos, consumos, pagamentos e frequência.

---

# 🎯 Objetivos

- Implantar um servidor PostgreSQL em Linux.
- Configurar acesso remoto via DBeaver.
- Modelar um banco de dados relacional.
- Aplicar boas práticas de modelagem.
- Implementar restrições de integridade.
- Monitorar métricas utilizando PostgreSQL Exporter, Prometheus e Grafana.
- Documentar todas as etapas do projeto.

---

# 🏗 Arquitetura

```
Windows 10
      │
      │ SSH
      ▼
Ubuntu Server (VirtualBox)
      │
      ▼
 PostgreSQL
      │
      ├── DBeaver
      ├── PostgreSQL Exporter
      ├── Prometheus
      └── Grafana
```

---

# 🛠 Tecnologias Utilizadas

| Ferramenta | Finalidade |
|------------|------------|
| PostgreSQL | Banco de Dados |
| Ubuntu Server | Servidor Linux |
| VirtualBox | Virtualização |
| SSH | Administração remota |
| DBeaver | Gerenciamento do banco |
| dbdiagram.io | Modelagem |
| PostgreSQL Exporter | Exportação de métricas |
| Prometheus | Coleta de métricas |
| Grafana | Dashboards |
| Git | Versionamento |
| GitHub | Hospedagem do projeto |

---

# 📐 Modelagem do Banco

A modelagem foi desenvolvida utilizando **dbdiagram.io**.

Durante essa etapa foram definidos:

- Entidades
- Relacionamentos
- Chaves Primárias
- Chaves Estrangeiras
- Restrições
- Regras de Integridade

## 🎥 Processo de Modelagem

<p align="center">

<img src="./docs/assets/modelagem.gif" width="900">

</p>

---

# 📂 Estrutura do Projeto

```
📦 postgresql-linux-dba
│
├── README.md
│
├── database
│   ├── schema.sql
│   ├── inserts.sql
│   └── consultas.sql
│
├── docs
│   ├── planejamento.md
│   ├── configuracao-vm.md
│   ├── instalacao-postgresql.md
│   ├── acesso-remoto.md
│   ├── monitoramento.md
│   └── assets
│       ├── modelagem.gif
│       ├── diagrama.png
│       └── dashboard.png
│
├── monitoring
│   ├── prometheus
│   └── grafana
│
└── scripts
```

---

# 📚 Funcionalidades do Banco

- Cadastro de Clientes
- Cadastro de Professores
- Cadastro de Planos
- Cadastro de Produtos
- Matrículas
- Controle de Frequência
- Pagamentos
- Consumo de Produtos

---

# 🔐 Recursos Implementados

- Primary Keys
- Foreign Keys
- CHECK Constraints
- UNIQUE Constraints
- NOT NULL Constraints
- Integridade Referencial

---

# 🖥 Ambiente

| Item | Configuração |
|------|--------------|
| Sistema Operacional | Ubuntu Server |
| Banco de Dados | PostgreSQL |
| Máquina Virtual | VirtualBox |
| Cliente SQL | DBeaver |
| Monitoramento | Prometheus + Grafana |

---

# 📈 Monitoramento

O ambiente será monitorado através de:

- PostgreSQL Exporter
- Prometheus
- Grafana

Serão avaliadas métricas como:

- Conexões ativas;
- Uso de CPU;
- Uso de memória;
- Consultas executadas;
- Tempo de resposta;
- Atividade do banco.

---

# 📸 Documentação

Todo o desenvolvimento foi documentado, incluindo:

- Planejamento
- Modelagem
- Configuração da VM
- Instalação do PostgreSQL
- Configuração do acesso remoto
- Configuração do Firewall
- Testes
- Monitoramento

---

# 🚀 Status do Projeto

- [x] Modelagem do banco
- [x] Criação da Máquina Virtual
- [x] Instalação Ubuntu Server
- [x] Configuração SSH
- [x] Instalação PostgreSQL
- [x] Configuração do acesso remoto
- [ ] Criação das tabelas
- [ ] Inserção de dados
- [ ] PostgreSQL Exporter
- [ ] Prometheus
- [ ] Grafana
- [ ] Dashboard
- [ ] Testes de carga
- [ ] Documentação final

---

# 👨‍💻 Autor

Desenvolvido por **Uriel** como projeto prático da disciplina de Administração de Banco de Dados.
