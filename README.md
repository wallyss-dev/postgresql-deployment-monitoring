<div align="center">

#  PostgreSQL Linux Database Administration

### Implantação, Administração e Monitoramento de um Banco de Dados PostgreSQL

Projeto pessoal desenvolvido com objetivo de aprimorar meus conhecimentos e desafiar meu raciocínio lógico, contemplando desde a modelagem até o monitoramento de um ambiente PostgreSQL em um servidor Linux.



</div>

---

##  Sobre o Projeto

 Meu objetivo foi implantar um ambiente completo de banco de dados PostgreSQL em um **Ubuntu Server** executando em uma máquina virtual.

Durante o desenvolvimento realizei todas as etapas normalmente executadas por um Administrador de Banco de Dados (DBA), incluindo:

- Planejamento da solução;
- Modelagem do banco de dados;
- Implantação do PostgreSQL;
- Configuração do servidor Linux;
- Configuração de acesso remoto;
- Administração do banco;
- Monitoramento utilizando Prometheus e Grafana;
- Documentação completa do processo.

O banco de dados modela um sistema de **e-commerce**, permitindo o gerenciamento de Estoque, pedidos, pagamentos, relatórios, performance.

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

#  Arquitetura

```
Windows 10
   |
   | SSH
   ▼
Ubuntu Server (VirtualBox)
   │
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

#  Tecnologias Utilizadas

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

#  Modelagem do Banco

O comum seria utilizar o **pgModeler** que possui postgreSQL como linguagem nativa, por escolha pessoal utilizei o  **dbdiagram.io**.



Durante essa etapas me mantive focado em seguir este plano: Meu banco deveria ter
- Entidades
- Relacionamentos
- Chaves Primárias
- Chaves Estrangeiras
- Restrições
- Regras de Integridade

##  Processo de Modelagem

<p align="center">

<img src="./02_modelagem/Gif 1 construção modelagem banco.gif" width="700">

</p>

---

#  Estrutura do Projeto

```
 postgresql-linux-dba
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

#  Funcionalidades do Banco

- 
- 
- 
- 
- 
- 
- 
- 
---

#  Recursos Implementados

- Primary Keys
- Foreign Keys
- CHECK Constraints
- UNIQUE Constraints
- NOT NULL Constraints
- Integridade Referencial

---

# Ambiente

| Item | Configuração |
|------|--------------|
| Sistema Operacional | Ubuntu Server |
| Banco de Dados | PostgreSQL |
| Máquina Virtual | VirtualBox |
| Cliente SQL | DBeaver |
| Monitoramento | Prometheus + Grafana |

---

# Monitoramento

Ferramentas/ambientes de monitoramento:
- PostgreSQL Exporter
- Prometheus
- Grafana


Métricas avaliadas:

- Conexões ativas;
- Uso de CPU;
- Uso de memória;
- Consultas executadas;
- Tempo de resposta;
- Atividade do banco.

---

#  Documentação

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

#  Status do Projeto

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

#  Autor

Desenvolvido por **Uriel** como projeto de portifólio.
