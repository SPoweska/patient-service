DROP TABLE IF EXISTS patient;
DROP TABLE IF EXISTS lek;
DROP TABLE IF EXISTS skierowanie;

CREATE TABLE IF NOT EXISTS skierowanie (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  LEKARZ VARCHAR(250) NOT NULL,
  DATA_WYSTAWIENIA TIMESTAMP,
  OPIS VARCHAR(250) NOT NULL
);
INSERT INTO skierowanie (LEKARZ, DATA_WYSTAWIENIA, OPIS) VALUES
('Jan Kowalski', (CAST(N'2021-07-01' AS Date)), 'cos tam'),
('Adam Nowak', (CAST(N'2021-07-01' AS Date)), 'cos tam');


CREATE TABLE IF NOT EXISTS patient (
  ID INT AUTO_INCREMENT  PRIMARY KEY,
  FIRST_NAME VARCHAR(250) NOT NULL,
  LAST_NAME VARCHAR(250) NOT NULL,
  PESEL VARCHAR(250) NOT NULL,
  MIEJSCOWOSC VARCHAR(250) NOT NULL
);

INSERT INTO patient (FIRST_NAME, LAST_NAME, PESEL, MIEJSCOWOSC) VALUES
  ('Ala', 'Makota', '11111111111', 'Krakuf'),
  ('Ela', 'Makota', '44444444444', 'Warszafa'),
  ('Ola', 'Dom', '22222222222', 'Rzeszuf'),
  ('Jan', 'Kowalski', '33333333333', 'Wrocłaf');

CREATE TABLE IF NOT EXISTS lek (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  NAZWA VARCHAR(250) NOT NULL,
  PRODUCENT VARCHAR(250) NOT NULL,
  CENA INT NOT NULL
);

INSERT INTO lek (NAZWA, PRODUCENT, CENA) VALUES
('Ibum', 'HASCO-LEK', 10),
('Tran', 'Domowa Apteczka', 33),
('Witamina C', 'Aura Herbals', 8),
('Ashwagandha', 'Swanson', 24);