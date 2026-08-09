insert into cliente(nome, cpf, telefone, data_cadastro, status) values
('Junior Barros', '12342537890', '86980345674', '2026-03-11', 'Inativo');

select 
nome,
cpf,
status
from cliente
where nome = 'Junior Barros';

update cliente
set status = 'Ativo'
where nome = 'Junior Barros';

delete from cliente
where nome = 'Junior Barros';


-- rollback
begin;

update cliente
set status = 'Ativo'
where nome = 'Junior Barros';

rollback;

-- commit

begin;

update cliente 
set status = 'Ativo'
where nome = 'Junior Barros';

commit;