CREATE TABLE user_profile (
  user_id INT,
  msisdn STRING,
  age INT,
  gender STRING,
  PRIMARY KEY (user_id) NOT ENFORCED
);

INSERT INTO user_profile (user_id, msisdn, age, gender) VALUES
(1, '6285712345610', 25, 'M'),
(2, '6285712345611', 38, 'F'),
(3, '6285712345612', 50, 'M'),
(4, '6285712345613', 55, 'F'),
(5, '6285712345614', 27, 'M'),
(6, '6285712345615', 29, 'F'),
(7, '6285712345616', 24, 'M'),
(8, '6285712345617', 12, 'F'),
(9, '6285712345618', 13, 'M'),
(10, '6285712345619', 23, 'F');