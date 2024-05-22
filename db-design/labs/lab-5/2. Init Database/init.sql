CREATE TABLE gym (
	id SERIAL primary key,
	city varchar(20),
	street varchar(20),
	house integer,
	subway_near varchar(20)
);

CREATE TABLE sales (
	id SERIAL primary key,
	start_date date,
	end_date date,
	sale_in_percent integer
);

CREATE TABLE tickets (
	id SERIAL primary key,
	sale_id integer REFERENCES sales (id),
	cost money,
	duration_days integer
);

CREATE TABLE workers (
	id SERIAL primary key,
	gym_id integer REFERENCES gym (id),
	salary money,
	hiring_date date,
	name varchar(40)
);

CREATE TABLE users (
	id SERIAL primary key,
	ticket_id integer REFERENCES tickets (id),
	phone character(12),
	name varchar(40),
	last_payment date
);

CREATE TABLE comments (
	id SERIAL primary key,
	gym_id integer REFERENCES gym (id),
	user_id integer REFERENCES users (id),
	date date,
	text varchar(200)
);

CREATE TABLE gym_tickets (
	gym_id integer REFERENCES gym (id),
	ticket_id integer REFERENCES tickets (id)
);


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
(DATE '02-20-2024', DATE '02-26-2024', 10);



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
(6, 10000.00, DATE '12-20-2020', 'ницше'),
(3, 20000.5, DATE '01-01-2000', 'франческо'),
(1, 20000.5, DATE '02-03-2010', 'луиджи'),
(2, 20000.5, DATE '01-10-2012', 'касиус'),
(3, 20000.5, DATE '01-23-2024', 'мухамед'),
(4, 20000.5, DATE '01-06-2014', 'изя'),
(5, 20000.5, DATE '01-19-2018', 'тони'),
(6, 20000.5, DATE '01-14-2019', 'гаргона'),
(7, 20000.5, DATE '01-12-2007', 'патрик'),
(8, 20000.5, DATE '01-18-2009', 'арсен'),
(9, 20000.5, DATE '01-19-2014', 'гаусс'),
(10, 20000.5, DATE '01-13-2023', 'евгений'),
(11, 20000.5, DATE '01-20-2002', 'галеаф'),
(12, 20000.5, DATE '01-28-2010', 'давид'),
(13, 20000.5, DATE '12-31-2012', 'гильберт');



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
(1, 1, DATE '02-01-2023', 'Отличный зал'),
(2, 3, DATE '01-02-2024', 'Все понравилось!'),
(3, 5, DATE '12-03-2023', 'Самый лучший тренажерный зал!'),
(4, 10, DATE '10-15-2022', 'Лучше бы даже не ходил туда');

