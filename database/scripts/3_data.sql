INSERT INTO user (username, fullname, email, password) VALUES
('joao_silva', 'João Silva', 'joao.silva@email.com', 'senha123'),
('maria_oliveira', 'Maria Oliveira', 'maria.oliveira@email.com', 'abc456'),
('carlos_santos', 'Carlos Santos', 'carlos.santos@email.com', 'qwerty789'),
('ana_pereira', 'Ana Pereira', 'ana.pereira@email.com', 'senhasegura'),
('pedro_alves', 'Pedro Alves', 'pedro.alves@email.com', 'minhasenha'),
('julia_lima', 'Júlia Lima', 'julia.lima@email.com', '12345678');

-- Posts do João Silva (user_id 1)
INSERT INTO post (user_id, content) VALUES
(1, 'Hoje o dia está lindo! #sol #verao'),
(1, 'Acabei de terminar meu novo projeto, muito feliz com o resultado!'),
(1, 'Alguém recomenda um bom livro para ler nas férias?');

-- Posts da Maria Oliveira (user_id 2)
INSERT INTO post (user_id, content) VALUES
(2, 'Receita nova no blog: bolo de chocolate sem glúten!'),
(2, 'Dia de limpeza geral em casa, organização traz paz mental.'),
(2, 'Indo para a praia no final de semana, mal posso esperar!'),
(2, 'Reflexão do dia: pequenos gestos fazem grandes diferenças.');

-- Posts do Carlos Santos (user_id 3)
INSERT INTO post (user_id, content) VALUES
(3, 'Novo recorde pessoal na corrida hoje: 10km em 45 minutos!'),
(3, 'Workshop de fotografia foi incrível, aprendi muitas técnicas novas.'),
(3, 'Precisando de dicas para fotografar paisagens urbanas.');

-- Posts da Ana Pereira (user_id 4)
INSERT INTO post (user_id, content) VALUES
(4, 'Primeiro dia no novo emprego, ansiosa e animada!'),
(4, 'Finalmente consegui terminar a maratona de séries que começei.'),
(4, 'Dica de filme: "A Chegada" é sensacional para quem gosta de ficção científica.');

-- Posts do Pedro Alves (user_id 5)
INSERT INTO post (user_id, content) VALUES
(5, 'Montando meu novo home office, dicas de organização são bem-vindas.'),
(5, 'Meu gato acabou de derrubar o vaso da sala... de novo.'),
(5, 'Almoço de família hoje, saudades desse momento.');

-- Posts da Júlia Lima (user_id 6)
INSERT INTO post (user_id, content) VALUES
(6, 'Iniciando meu curso de pintura hoje, mal posso esperar!'),
(6, 'Minha primeira obra de arte concluída, o que acham?'),
(6, 'Exposição de arte moderna no centro cultural, recomendo!'),
(6, 'Dia de relaxar com um bom vinho e música clássica.');

-- Likes para os posts do João Silva (post_ids 1-3)
INSERT INTO user_likes_post (user_id, post_id) VALUES
(2, 1), (3, 1), (4, 1), (6, 1),  -- Post 1 tem 4 likes
(2, 2), (5, 2),                   -- Post 2 tem 2 likes
(3, 3), (4, 3), (5, 3), (6, 3);   -- Post 3 tem 4 likes

-- Likes para os posts da Maria Oliveira (post_ids 4-7)
INSERT INTO user_likes_post (user_id, post_id) VALUES
(1, 4), (3, 4), (5, 4), (6, 4),   -- Post 4 tem 4 likes
(1, 5), (3, 5),                    -- Post 5 tem 2 likes
(1, 6), (3, 6), (4, 6), (5, 6), (6, 6), -- Post 6 tem 5 likes
(1, 7);                            -- Post 7 tem 1 like

-- Likes para os posts do Carlos Santos (post_ids 8-10)
INSERT INTO user_likes_post (user_id, post_id) VALUES
(1, 8), (2, 8), (4, 8), (5, 8), (6, 8), -- Post 8 tem 5 likes
(2, 9), (4, 9), (6, 9),                 -- Post 9 tem 3 likes
(1, 10), (2, 10), (4, 10), (5, 10);     -- Post 10 tem 4 likes

-- Likes para os posts da Ana Pereira (post_ids 11-13)
INSERT INTO user_likes_post (user_id, post_id) VALUES
(2, 11), (3, 11), (5, 11), (6, 11),    -- Post 11 tem 4 likes
(1, 12), (2, 12), (3, 12),              -- Post 12 tem 3 likes
(1, 13), (2, 13), (3, 13), (5, 13), (6, 13); -- Post 13 tem 5 likes

-- Likes para os posts do Pedro Alves (post_ids 14-16)
INSERT INTO user_likes_post (user_id, post_id) VALUES
(1, 14), (2, 14), (3, 14), (4, 14), (6, 14), -- Post 14 tem 5 likes
(1, 15), (2, 15), (4, 15),                   -- Post 15 tem 3 likes
(3, 16), (4, 16), (6, 16);                   -- Post 16 tem 3 likes

-- Likes para os posts da Júlia Lima (post_ids 17-20)
INSERT INTO user_likes_post (user_id, post_id) VALUES
(1, 17), (2, 17), (3, 17), (4, 17), (5, 17), -- Post 17 tem 5 likes
(1, 18), (2, 18), (3, 18), (4, 18),          -- Post 18 tem 4 likes
(1, 19), (3, 19), (5, 19),                   -- Post 19 tem 3 likes
(2, 20), (3, 20), (4, 20), (5, 20);          -- Post 20 tem 4 likes