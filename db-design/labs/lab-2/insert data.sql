delete from comments
where id >= 1;

delete from users
where id >= 1;

delete from workers
where id >= 1;

delete from gym_tickets
where gym_id >= 1;

delete from tickets
where id >= 1;

delete from sales
where id >= 1;

delete from gym
where id >= 1;



ALTER SEQUENCE gym_id_seq RESTART WITH 1;

INSERT INTO gym (city, street, house, subway_near)
VALUES
('санкт-петербург', 'комсомолов', 1, 'лесная'),
('санкт-петербург', 'кима', 6, 'василеостровская'),
('москва', 'ленинская', 3, 'зеленая'),
('москва', 'смоленская', 19, 'девяткино'),
('москва', 'ростовская', 21, 'кубчино'),
('томск', 'моховая', 4, 'первое'),
('томск', 'кузнецкий мост', 90, 'второе'),
('новгород', 'неглинная', 11, 'старое'),
('новгород', 'трубная', 7, 'новое'),
('новгород', 'олимпийская', 9, 'владимир'),
('новгород', 'октябрьская', 3, 'центральное'),
('краснодар', 'деинцев', 31, 'крайнее'),
('краснодар', 'бутырская', 23, 'веселое'),
('краснодар', 'башиловская', 5, 'грустное'),
('краснодар', 'лиловая', 89, 'достроенное');



ALTER SEQUENCE sales_id_seq RESTART WITH 1;

INSERT INTO sales (start_date, end_date, sale_in_percent)
VALUES
(DATE '01-01-2024', DATE '01-01-2025', 10),
(DATE '20-02-2024', DATE '26-02-2024', 10);



ALTER SEQUENCE tickets_id_seq RESTART WITH 1;

INSERT INTO tickets (sale_id, cost, duration_days)
VALUES
(1, 10000, 365),
(2, 2000, 30);



INSERT INTO gym_tickets (gym_id, ticket_id)
VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 2),
(5, 1),
(6, 2),
(7, 2),
(8, 1),
(9, 1),
(10, 1),
(11, 2),
(12, 1),
(13, 2),
(14, 1),
(15, 2);



ALTER SEQUENCE workers_id_seq RESTART WITH 1;

INSERT INTO workers (gym_id, salary, hiring_date, name)
VALUES
(6, 10000.00, DATE '20-12-2020', 'ницше'),
(3, 20000.5, DATE '1-01-2000', 'франческо'),
(1, 20000.5, DATE '3-02-2010', 'луиджи'),
(2, 20000.5, DATE '10-01-2012', 'касиус'),
(3, 20000.5, DATE '23-01-2024', 'мухамед'),
(4, 20000.5, DATE '6-01-2014', 'изя'),
(5, 20000.5, DATE '19-01-2018', 'тони'),
(6, 20000.5, DATE '14-01-2019', 'гаргона'),
(7, 20000.5, DATE '12-01-2007', 'патрик'),
(8, 20000.5, DATE '18-01-2009', 'арсен'),
(9, 20000.5, DATE '19-01-2014', 'гаусс'),
(10, 20000.5, DATE '13-01-2023', 'евгений'),
(11, 20000.5, DATE '20-01-2002', 'галеаф'),
(12, 20000.5, DATE '28-01-2010', 'давид'),
(13, 20000.5, DATE '31-12-2012', 'гильберт');



ALTER SEQUENCE users_id_seq RESTART WITH 1;

INSERT INTO users (ticket_id, phone, name, last_payment)
VALUES
(null, +78211231234, 'виргилий', null),
(null, +78212394524, 'горацио', null),
(null, +79212312521, 'арсений', null),
(null, +78211231234, 'олег', null),
(null, +78212394524, 'фридрих', null),
(null, +79212312521, 'арсений', null),
(null, +78245562582, 'пигмалион', null),
(null, +78215756752, 'георгий', null),
(null, +79214573452, 'август', null),
(null, +78223464569, 'клеопатра', null),
(null, +78212123537, 'иоганн', null),
(null, +79211238451, 'фридрих', null);



ALTER SEQUENCE comments_id_seq RESTART WITH 1;

INSERT INTO comments (gym_id, user_id, date, text)
VALUES
(1, 1, DATE '01-02-2023', 'Отличный зал'),
(2, 3, DATE '02-01-2024', 'Все понравилось!'),
(3, 5, DATE '03-12-2023', 'Самый лучший тренажерный зал!'),
(4, 10, DATE '15-10-2022', 'Лучше бы даже не ходил туда');