--
-- File generated with SQLiteStudio v3.0.7 on �et. dec 1 08:49:12 2016
--
-- Text encoding used: windows-1250
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: dobavnica_vsebuje_knjiga
CREATE TABLE dobavnica_vsebuje_knjiga (id_dobavnica INTEGER, id_knjiga INTEGER, koliko INTEGER NOT NULL, PRIMARY KEY (id_dobavnica, id_knjiga));

-- Table: Knjiga
CREATE TABLE Knjiga ("ID " INTEGER PRIMARY KEY AUTOINCREMENT, Naslov TEXT NOT NULL, Avtor TEXT, �anr INTEGER NOT NULL, Leto_izdaje INTEGER NOT NULL, Format TEXT NOT NULL, Opis TEXT, Cena DOUBLE NOT NULL, �t_prodanih INTEGER NOT NULL, �t_naZalogi INTEGER NOT NULL, �t_dniZaDobavo INTEGER DEFAULT (0) NOT NULL);

-- Table: Dobavitelj
CREATE TABLE Dobavitelj (ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, ime_podjetja TEXT NOT NULL, naslov TEXT NOT NULL, "e-mail" TEXT, "katereKnjigeDobavljajo(ID_Knjige)" INTEGER NOT NULL);

-- Table: naro�ilo
CREATE TABLE naro�ilo (id INTEGER PRIMARY KEY AUTOINCREMENT, izpolnjeno TEXT CHECK (izpolnjeno = 'DA' OR izpolnjeno = 'NE') NOT NULL);

-- Table: po�iljka_z_ra�unom
CREATE TABLE po�iljka_z_ra�unom (ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, znesek DOUBLE NOT NULL, ra�un_pla�an TEXT CHECK (ra�un_pla�an = 'DA' OR ra�un_pla�an = 'NE') NOT NULL, odposlana TEXT NOT NULL);

-- Table: Dobavnica
CREATE TABLE Dobavnica (ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Znesek DOUBLE NOT NULL);

-- Table: kupec
CREATE TABLE kupec (uporabni�ko_ime TEXT PRIMARY KEY UNIQUE, email TEXT, naslov TEXT NOT NULL, telefon INTEGER NOT NULL, personalizirana_ponudba TEXT);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
