DROP TABLE bookings;
DROP TABLE classes;
DROP TABLE members;

CREATE TABLE classes
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
