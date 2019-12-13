DROP TABLE bookings;
DROP TABLE sessions;
DROP TABLE members;

CREATE TABLE sessions
(
  id SERIAL primary key,
  name VARCHAR(255) not null
);

CREATE TABLE members
(
  id SERIAL primary key,
  first_name VARCHAR(255) not null,
  last_name VARCHAR(255) not null,
  DOB INT,
  email VARCHAR(255),
  gender VARCHAR(255)
);

CREATE TABLE bookings
(
  id SERIAL primary key,
  member_id INT references classes(id),
  classes_id INT references classes(id)
);
