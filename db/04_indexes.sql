create index idx_produto_categoria
ON produto(id_categoria);

create index idx_estoque_produto
on estoque(id_produto);

create index idx_endereco_cliente
on endereco(id_cliente);

create index idx_carrinho_cliente
on carrinho(id_cliente);

create index idx_item_carrinho_carrinho
on item_carrinho(id_carrinho);

create index idx_item_carrinho_produto
on item_carrinho(id_produto);

create index idx_pedido_cliente
on pedido(id_cliente);

create index idx_pedido_endereco
on pedido(id_endereco);

create index idx_item_pedido_pedido
on item_pedido(id_pedido);

create index idx_item_pedido_produto
on item_pedido(id_produto);

create index idx_avaliacao_produto
on avaliacao(id_produto);

create index idx_pagamento_pedido
on pagamento(id_pedido);
