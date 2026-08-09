-- Tabelas
select
table_name
from information_schema.tables
where table_schema = 'public'
order by table_name;

-- registros
select
*
from cliente;

-- restrições
select *
from produto 
where preco < 0;

-- índices
select
	tablename,
	indexname,
	indexdef
from pg_indexes
where schemaname = 'public'
order by tablename, indexname;

-- tamanho do banco
select
pg_size_pretty(pg_database_size(current_database()));
