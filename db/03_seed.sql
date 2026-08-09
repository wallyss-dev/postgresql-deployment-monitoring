## Dados mock, feitos para testar e monitorar o banco


INSERT INTO cliente
    (nome, cpf, telefone, data_cadastro, status)
VALUES
    ('João Silva', '12345678901', '86999990001', '2026-01-10 09:15:00', 'Ativo'),
    ('Maria Santos', '23456789012', '86999990002', '2026-01-12 10:30:00', 'Ativo'),
    ('Carlos Oliveira', '34567890123', '86999990003', '2026-01-15 14:20:00', 'Ativo'),
    ('Ana Costa', '45678901234', '86999990004', '2026-01-18 16:45:00', 'Ativo'),
    ('Pedro Souza', '56789012345', '86999990005', '2026-01-20 11:10:00', 'Ativo'),
    ('Juliana Alves', '67890123456', '86999990006', '2026-01-25 08:50:00', 'Ativo'),
    ('Rafael Pereira', '78901234567', '86999990007', '2026-02-02 13:35:00', 'Ativo'),
    ('Fernanda Lima', '89012345678', '86999990008', '2026-02-08 15:25:00', 'Ativo'),
    ('Lucas Martins', '90123456789', '86999990009', '2026-02-15 17:40:00', 'Ativo'),
    ('Camila Rocha', '01234567890', '86999990010', '2026-02-20 12:05:00', 'Inativo');



INSERT INTO categoria
    (nome, descricao)
VALUES
    ('Eletrônicos', 'Produtos eletrônicos e dispositivos'),
    ('Informática', 'Computadores, periféricos e acessórios'),
    ('Celulares', 'Smartphones e acessórios para celulares'),
    ('Áudio', 'Fones, caixas de som e equipamentos de áudio'),
    ('Acessórios', 'Acessórios diversos para tecnologia');



INSERT INTO produto
    (id_categoria, nome, descricao, preco, ativo, data_cadastro)
VALUES
    (1, 'Smart TV 50 Polegadas', 'Smart TV LED 4K de 50 polegadas', 2499.90, true, '2026-01-05 10:00:00'),
    (1, 'Console de Videogame', 'Console de videogame de última geração', 3999.90, true, '2026-01-06 11:30:00'),
    (2, 'Notebook 15 Polegadas', 'Notebook com processador de alto desempenho', 3299.90, true, '2026-01-07 09:45:00'),
    (2, 'Mouse Sem Fio', 'Mouse óptico sem fio com conexão USB', 89.90, true, '2026-01-08 14:20:00'),
    (2, 'Teclado Mecânico', 'Teclado mecânico com iluminação RGB', 249.90, true, '2026-01-09 15:10:00'),
    (3, 'Smartphone 128GB', 'Smartphone com armazenamento de 128GB', 1899.90, true, '2026-01-10 10:30:00'),
    (3, 'Carregador USB-C', 'Carregador rápido com conexão USB-C', 79.90, true, '2026-01-11 13:40:00'),
    (3, 'Película de Vidro', 'Película protetora para smartphone', 29.90, true, '2026-01-12 16:00:00'),
    (4, 'Fone Bluetooth', 'Fone de ouvido Bluetooth com microfone', 199.90, true, '2026-01-13 11:15:00'),
    (4, 'Caixa de Som Bluetooth', 'Caixa de som portátil Bluetooth', 299.90, true, '2026-01-14 12:50:00'),
    (4, 'Headset Gamer', 'Headset gamer com microfone integrado', 349.90, true, '2026-01-15 14:35:00'),
    (5, 'Cabo HDMI', 'Cabo HDMI de alta velocidade', 49.90, true, '2026-01-16 09:20:00'),
    (5, 'Hub USB', 'Hub USB com múltiplas portas', 119.90, true, '2026-01-17 10:45:00'),
    (5, 'Suporte para Notebook', 'Suporte ajustável para notebook', 159.90, true, '2026-01-18 13:10:00'),
    (5, 'Webcam Full HD', 'Webcam Full HD para chamadas e reuniões', 229.90, false, '2026-01-19 15:30:00');



INSERT INTO estoque
    (id_produto, quantidade, estoque_minimo, ultima_atualizacao)
VALUES
    (1, 15, 5, '2026-02-20 09:00:00'),
    (2, 8, 3, '2026-02-20 09:05:00'),
    (3, 12, 4, '2026-02-20 09:10:00'),
    (4, 35, 10, '2026-02-20 09:15:00'),
    (5, 20, 5, '2026-02-20 09:20:00'),
    (6, 18, 5, '2026-02-20 09:25:00'),
    (7, 40, 10, '2026-02-20 09:30:00'),
    (8, 60, 15, '2026-02-20 09:35:00'),
    (9, 25, 8, '2026-02-20 09:40:00'),
    (10, 14, 5, '2026-02-20 09:45:00'),
    (11, 10, 4, '2026-02-20 09:50:00'),
    (12, 50, 10, '2026-02-20 09:55:00'),
    (13, 22, 5, '2026-02-20 10:00:00'),
    (14, 16, 5, '2026-02-20 10:05:00'),
    (15, 0, 5, '2026-02-20 10:10:00');



INSERT INTO endereco
    (id_cliente, cep, logradouro, numero, complemento, bairro, cidade, estado)
VALUES
    (1, '64000001', 'Rua das Flores', '100', NULL, 'Centro', 'Teresina', 'PI'),
    (2, '64000002', 'Avenida Principal', '250', 'Apto 301', 'Fátima', 'Teresina', 'PI'),
    (3, '64000003', 'Rua São João', '450', NULL, 'Centro', 'Teresina', 'PI'),
    (4, '64000004', 'Avenida Brasil', '800', 'Casa', 'Ininga', 'Teresina', 'PI'),
    (5, '64000005', 'Rua do Comércio', '120', NULL, 'Centro', 'Teresina', 'PI'),
    (6, '64000006', 'Rua das Palmeiras', '350', 'Apto 102', 'Jóquei', 'Teresina', 'PI'),
    (7, '64000007', 'Avenida Frei Serafim', '600', NULL, 'Centro', 'Teresina', 'PI'),
    (8, '64000008', 'Rua Professor José', '90', NULL, 'Ilhotas', 'Teresina', 'PI'),
    (9, '64000009', 'Avenida Kennedy', '1500', 'Casa', 'São Cristóvão', 'Teresina', 'PI'),
    (10, '64000010', 'Rua das Acácias', '220', 'Apto 201', 'Morada do Sol', 'Teresina', 'PI'),
    (1, '64000011', 'Rua Nova', '75', NULL, 'Centro', 'Teresina', 'PI'),
    (3, '64000012', 'Avenida das Nações', '500', 'Sala 4', 'Noivos', 'Teresina', 'PI');


INSERT INTO carrinho
    (id_cliente, data_criacao, status)
VALUES
    (1, '2026-02-21 10:00:00', 'Ativo'),
    (2, '2026-02-21 11:30:00', 'Finalizado'),
    (4, '2026-02-22 09:15:00', 'Ativo'),
    (5, '2026-02-22 14:20:00', 'Abandonado'),
    (7, '2026-02-23 16:45:00', 'Finalizado'),
    (9, '2026-02-24 18:10:00', 'Ativo');



INSERT INTO item_carrinho
    (id_carrinho, id_produto, quantidade, preco_unitario)
VALUES
    (1, 4, 2, 89.90),
    (1, 5, 1, 249.90),
    (2, 6, 1, 1899.90),
    (2, 8, 2, 29.90),
    (3, 9, 1, 199.90),
    (3, 12, 2, 49.90),
    (4, 3, 1, 3299.90),
    (4, 13, 1, 119.90),
    (5, 11, 1, 349.90),
    (5, 14, 1, 159.90),
    (6, 7, 2, 79.90),
    (6, 10, 1, 299.90);


INSERT INTO pedido
    (id_cliente, id_endereco, data_pedido, status, valor_total)
VALUES
    (1, 1, '2026-02-10 10:15:00', 'Entregue', 2699.80),
    (2, 2, '2026-02-11 14:30:00', 'Entregue', 1959.70),
    (3, 3, '2026-02-12 09:45:00', 'Enviado', 3299.90),
    (4, 4, '2026-02-13 16:20:00', 'Pago', 499.80),
    (5, 5, '2026-02-14 11:10:00', 'Entregue', 3999.90),
    (6, 6, '2026-02-15 13:50:00', 'Cancelado', 239.70),
    (7, 7, '2026-02-16 15:40:00', 'Entregue', 429.80),
    (8, 8, '2026-02-17 10:25:00', 'Enviado', 1899.90),
    (9, 9, '2026-02-18 17:30:00', 'Pendente', 699.80),
    (10, 10, '2026-02-19 12:15:00', 'Pago', 379.80);



INSERT INTO item_pedido
    (id_pedido, id_produto, quantidade, preco_unitario, subtotal)
VALUES
    (1, 1, 1, 2499.90, 2499.90),
    (1, 12, 4, 49.90, 199.60),

    (2, 6, 1, 1899.90, 1899.90),
    (2, 8, 2, 29.90, 59.80),

    (3, 3, 1, 3299.90, 3299.90),

    (4, 9, 1, 199.90, 199.90),
    (4, 10, 1, 299.90, 299.90),

    (5, 2, 1, 3999.90, 3999.90),

    (6, 7, 3, 79.90, 239.70),

    (7, 11, 1, 349.90, 349.90),
    (7, 12, 1, 49.90, 49.90),
    (7, 4, 1, 89.90, 89.90),

    (8, 6, 1, 1899.90, 1899.90),

    (9, 11, 1, 349.90, 349.90),
    (9, 10, 1, 299.90, 299.90),
    (9, 12, 1, 49.90, 49.90),

    (10, 5, 1, 249.90, 249.90),
    (10, 13, 1, 119.90, 119.90);


INSERT INTO pagamento
    (id_pedido, metodo_pagamento, valor, status, data_pagamento)
VALUES
    (1, 'Pix', 2699.80, 'Aprovado', '2026-02-10 10:20:00'),
    (2, 'Cartao', 1959.70, 'Aprovado', '2026-02-11 14:35:00'),
    (3, 'Pix', 3299.90, 'Aprovado', '2026-02-12 09:50:00'),
    (4, 'Cartao', 499.80, 'Aprovado', '2026-02-13 16:25:00'),
    (5, 'Pix', 3999.90, 'Aprovado', '2026-02-14 11:15:00'),
    (6, 'Cartao', 239.70, 'Estornado', '2026-02-15 14:00:00'),
    (7, 'Pix', 489.70, 'Aprovado', '2026-02-16 15:45:00'),
    (8, 'Cartao', 1899.90, 'Aprovado', '2026-02-17 10:30:00'),
    (9, 'Pix', 699.80, 'Pendente', NULL),
    (10, 'Cartao', 369.80, 'Aprovado', '2026-02-19 12:20:00');



INSERT INTO avaliacao
    (id_cliente, id_produto, nota, comentario, data_avaliacao)
VALUES
    (1, 1, 5, 'Excelente produto, imagem muito boa.', '2026-02-20 10:00:00'),
    (1, 12, 4, 'Cabo funciona muito bem.', '2026-02-20 10:10:00'),
    (2, 6, 5, 'Smartphone muito rápido e bonito.', '2026-02-20 11:00:00'),
    (2, 8, 4, 'Boa proteção para o celular.', '2026-02-20 11:15:00'),
    (3, 3, 5, 'Notebook excelente para trabalho.', '2026-02-20 12:00:00'),
    (4, 9, 4, 'Som de boa qualidade.', '2026-02-20 13:20:00'),
    (5, 2, 5, 'Produto excelente, recomendo.', '2026-02-20 14:00:00'),
    (7, 11, 5, 'Headset confortável e com ótimo áudio.', '2026-02-20 15:10:00'),
    (7, 4, 4, 'Mouse confortável e preciso.', '2026-02-20 15:20:00'),
    (8, 6, 5, 'Gostei bastante do aparelho.', '2026-02-20 16:00:00'),
    (9, 10, 4, 'Caixa de som com bom volume.', '2026-02-20 16:30:00'),
    (10, 5, 5, 'Teclado muito bom para jogos.', '2026-02-20 17:00:00'),
    (3, 12, 4, 'Boa qualidade pelo preço.', '2026-02-20 17:15:00'),
    (4, 13, 3, 'Funciona bem, mas poderia ter mais portas.', '2026-02-20 17:30:00'),
    (6, 7, 5, 'Carregamento rápido.', '2026-02-20 18:00:00');

UPDATE pedido
SET valor_total = 489.70
WHERE id_pedido = 7;

UPDATE pedido
SET valor_total = 699.70
WHERE id_pedido = 9;