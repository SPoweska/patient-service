DROP TABLE IF EXISTS patient;
DROP TABLE IF EXISTS lek;
DROP TABLE IF EXISTS skierowanie;
DROP TABLE IF EXISTS recepta;

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

CREATE TABLE IF NOT EXISTS recepta (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  PESEL VARCHAR(250) NOT NULL,
  DATA_WAZNOSCI TIMESTAMP,
  LEKARZ VARCHAR(250)NOT NULL,
  DATA_WYSTAWIENIA TIMESTAMP
);

INSERT INTO recepta (PESEL, DATA_WAZNOSCI, LEKARZ, DATA_WYSTAWIENIA) VALUES
('12345678901', (CAST(N'2021-07-25' AS Date)), 'Jan Kowalski', (CAST(N'2021-07-04' AS Date))),
('09876543221', (CAST(N'2021-07-29' AS Date)), 'Adam Nowak', (CAST(N'2021-07-07' AS Date))),
('12098590455', (CAST(N'2021-07-27' AS Date)), 'Marcin Pies', (CAST(N'2021-07-06' AS Date))),
('54645646422', (CAST(N'2021-07-30' AS Date)), 'Krzysztof Nowacki', (CAST(N'2021-07-08' AS Date))),
('98112400343', (CAST(N'2021-07-12' AS Date)), 'Karol Dec', (CAST(N'2021-06-20' AS Date)));

