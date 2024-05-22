/*
drop table gym;
drop table sales;
drop table tickets;
drop table workers;
drop table users;
drop table comments;
drop table gym_tickets;
*/

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