-- from the terminal run:
-- psql < air_traffic.sql

DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic

CREATE TABLE tickets
(
  id SERIAL PRIMARY KEY,
  passenger_id INTEGER REFERENCES passenger ON DELETE CASCADE,
  seat TEXT NOT NULL,
  departure TIMESTAMP NOT NULL,
  arrival TIMESTAMP NOT NULL,
  airlines_id INTEGER REFERENCES airlines ON DELETE SET NULL,
  from_city_id INTEGER REFERENCES from_city ON DELETE SET NULL,
  to_city_id INTEGER REFERENCES to_city ON DELETE SET NULL,
);

 CREATE TABLE passenger
  (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
  );

  CREATE TABLE airlines
  (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
  );

   CREATE TABLE from_city
  (
    id SERIAL PRIMARY KEY
    name TEXT NOT NULL,
    country TEXT NOT NULL
  );

CREATE TABLE to_city
  (
    id SERIAL PRIMARY KEY
    name TEXT NOT NULL,
    country TEXT NOT NULL
  );


INSERT INTO tickets
  (seat, departure, arrival)
VALUES
  ('33B', '2018-04-08 09:00:00', '2018-04-08 12:00:00'),
  ('8A', '2018-12-19 12:45:00', '2018-12-19 16:15:00'),
  ('12F', '2018-01-02 07:00:00', '2018-01-02 08:03:00'),
  ('20A', '2018-04-15 16:50:00', '2018-04-15 21:00:00'),
  ('23D', '2018-08-01 18:30:00', '2018-08-01 21:50:00'),
  ('18C', '2018-10-31 01:15:00', '2018-10-31 12:55:00'),
  ('9E', '2019-02-06 06:00:00', '2019-02-06 07:47:00'),
  ('1A', '2018-12-22 14:42:00', '2018-12-22 15:56:00'),
  ('32B', '2019-02-06 16:28:00', '2019-02-06 19:18:00'),
  ('10D', '2019-01-20 19:30:00', '2019-01-20 22:45:00');

 

  INSERT INTO passenger
  (first_name, last_name)
  VALUES
  ('Jennifer', 'Finch'),
  ('Thadeus', 'Gathercoal'),
  ('Sonja', 'Pauley'),
  ('Waneta', 'Skeleton'),
  ('Berkie', 'Wycliff'),
  ('Alvin', 'Leathes'),
  ('Cory', 'Squibbes');



  INSERT INTO airlines
  (name)
  VALUES
  ('United'),
  ('British Airways'),
  ('Delta'),
  ('TUI Fly Belgium'),
  ('Air China'),
  ('American Airlines'),
  ('Avianca Brasil');

 

  INSERT INTO from_city
  (name, country)
  VALUES
  ('Washington DC', 'United States'),
  ('Tokyo', 'Japan'),
  ('Los Angeles', 'United States'),
  ('Seattle', 'United States'),
  ('Paris', 'France'),
  ('Dubai', 'UAE'),
  ('New York', 'United States'),
  ('Cedar Rapids', 'United States'),
  ('Sao Paolo', 'Brazil');

  INSERT INTO to_city
  (name, country)
  VALUES
  ('London', 'United Kingdom'),
  ('Las Vegas', 'United States'),
  ('Mexico City', 'Mexico'),
  ('Casablanca', 'Morocco'),
  ('Beijing', 'China'),
  ('Charlotte', 'United States'),
  ('Chicago', 'United States'),
  ('New Orleans', 'United States'),
  ('Santiago', 'Chile');













  

