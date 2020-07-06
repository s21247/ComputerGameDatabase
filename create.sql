
CREATE TABLE Przeciwnik (
    Przeciwnik_ID int NOT NULL PRIMARY KEY,
    Nazwa VARCHAR(255) NOT NULL,
    Poziom VARCHAR(255) NOT NULL
);
CREATE TABLE FABULA (
    Fabula_ID BIGSERIAL PRIMARY KEY,
    Misja VARCHAR(255) NOT NULL,
    Poboczna_misja VARCHAR(255)
);
CREATE TABLE MAPA (
    Mapa_ID BIGSERIAL PRIMARY KEY,
    Nazwa VARCHAR(255) NOT NULL,
    Teren VARCHAR(255) NOT NULL
);
CREATE TABLE Przedmiot (
    Przedmiot_ID BIGSERIAL PRIMARY KEY,
    Rzadkosc VARCHAR(255) NOT NULL,
    Atak VARCHAR(255),
    Obrona VARCHAR(255),
    Mapa_ID BIGINT NOT NULL,
    CONSTRAINT fk_Mapa_Przedmiot
    FOREIGN KEY (Mapa_ID) REFERENCES Mapa(Mapa_ID)
);
CREATE TABLE NPC (
    NPC_ID BIGSERIAL PRIMARY KEY,
    Funkcja VARCHAR(255),
    Fabula_ID bigint NOT NULL,
    CONSTRAINT fk_Fabula_NPC
    FOREIGN KEY (Fabula_ID) REFERENCES Fabula (Fabula_ID)
);
CREATE TABLE Postac(
    Postac_ID BIGSERIAL PRIMARY KEY,
    Nazwa VARCHAR(255) NOT NULL,
    Poziom INT NOT NULL,
    Fabula_ID bigint NOT NULL,
    CONSTRAINT fk_Postac_Fabula
    FOREIGN KEY(Fabula_ID) REFERENCES Fabula (Fabula_ID)
);
CREATE TABLE Postac_Mapa (
    Postac_ID BIGINT NOT NULL,
    Mapa_ID BIGINT NOT NULL,
    FOREIGN KEY (Postac_ID) REFERENCES Postac (Postac_ID),
    FOREIGN KEY (Mapa_ID) REFERENCES Mapa (Mapa_ID)
);
CREATE TABLE Postac_Przedmiot (
    Id INT  PRIMARY KEY NOT NULL,
    Postac_ID BIGINT,
    Przedmiot_ID BIGINT,
    CONSTRAINT fk_Postac_ID 
    FOREIGN KEY (Postac_ID) REFERENCES Postac (Postac_ID),
    CONSTRAINT fk_Przedmiot_ID
    FOREIGN KEY (Przedmiot_ID) REFERENCES Przedmiot (Przedmiot_ID)
);
CREATE TABLE Postac_Przeciwnik (
    Postac_ID BIGINT NOT NULL,
    Przeciwnik_ID BIGINT,
    PRIMARY KEY(Postac_ID, Przeciwnik_ID),
    FOREIGN KEY (Postac_ID) REFERENCES Postac (Postac_ID),
    FOREIGN KEY (Przeciwnik_ID) REFERENCES Przeciwnik (Przeciwnik_ID)
);
