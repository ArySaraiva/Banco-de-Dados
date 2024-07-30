-- Inserir um endereço
INSERT INTO Endereco (id_endereco,rua, numero, bairro, cidade, estado, cep)
VALUES (1,'Rua Exemplo', '123', 'Centro', 'São Paulo', 'SP', '12345678');

-- Inserir um cliente
INSERT INTO Cliente (id_cliente, nome, cpf, data_nascimento, email, telefone, id_endereco)
VALUES (01,'João Silva', '12345678901', '1980-01-01', 'joao@example.com', '11987654321', LAST_INSERT_ID());

-- Inserir um histórico de interação
INSERT INTO HistoricoInteracao (id_interacao, cliente_id, tipo_interacao, descricao)
VALUES (01,01, 'Suporte', 'Cliente ligou para reclamar sobre a entrega.');

-- Consultar informações de um cliente específico
SELECT c.nome, c.cpf, c.data_nascimento, c.email, c.telefone, e.rua, e.numero, e.bairro, e.cidade, e.estado, e.cep
FROM Cliente c
LEFT JOIN Endereco e ON c.id_endereco = e.id_endereco
WHERE c.id_cliente = 1;

-- Consultar históricos de interação de um cliente específico
SELECT h.data_interacao, h.tipo_interacao, h.descricao
FROM HistoricoInteracao h
WHERE h.id_cliente = 1;