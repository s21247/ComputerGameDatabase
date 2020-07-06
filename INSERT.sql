
INSERT INTO Przeciwnik (Przeciwnik_ID,Nazwa,Poziom) VALUES ('1','Kot','5');
INSERT INTO Przeciwnik (Przeciwnik_ID,Nazwa,Poziom) VALUES ('2','Pies', '3');
INSERT INTO Przeciwnik (Przeciwnik_ID,Nazwa,Poziom) VALUES ('3','Aniol','45');
INSERT INTO Przeciwnik (Przeciwnik_ID,Nazwa,Poziom) VALUES ('4','Demon', '68');
INSERT INTO Przeciwnik (Przeciwnik_ID,Nazwa,Poziom) VALUES ('5','Pacholek','1');
INSERT INTO Przeciwnik (Przeciwnik_ID,Nazwa,Poziom) VALUES ('6','Golem', '20');
INSERT INTO Przeciwnik (Przeciwnik_ID,Nazwa,Poziom) VALUES ('7','Ork','30');
INSERT INTO Przeciwnik (Przeciwnik_ID,Nazwa,Poziom) VALUES ('8','Troll', '15');
INSERT INTO Przeciwnik (Przeciwnik_ID,Nazwa,Poziom) VALUES ('9','Pajak','25');
INSERT INTO Przeciwnik (Przeciwnik_ID,Nazwa,Poziom) VALUES ('10','Zolw', '10');

INSERT INTO Fabula (Fabula_ID, Misja,Poboczna_misja) VALUES ('1','Przynies ziemniaki','');
INSERT INTO Fabula (Fabula_ID, Misja,Poboczna_misja) VALUES ('2','Zabij 10 pacholkow','Zdobadz 5 slomy');
INSERT INTO Fabula (Fabula_ID, Misja,Poboczna_misja) VALUES ('3','Upoluj 5 psow','');
INSERT INTO Fabula (Fabula_ID, Misja,Poboczna_misja) VALUES ('4','Zdobadz 10 futra kota','Zabij bosa');
INSERT INTO Fabula (Fabula_ID, Misja,Poboczna_misja) VALUES ('5','Zabij 10 zolwiow','');
INSERT INTO Fabula (Fabula_ID, Misja,Poboczna_misja) VALUES ('6','Zdobadz 10 palek trolla','Znajdz czaszke trolla');
INSERT INTO Fabula (Fabula_ID, Misja,Poboczna_misja) VALUES ('7','Zabij golema','');
INSERT INTO Fabula (Fabula_ID, Misja,Poboczna_misja) VALUES ('8','Zdobadz 10 trucizny pajaka','Znajdz krolowa');
INSERT INTO Fabula (Fabula_ID, Misja,Poboczna_misja) VALUES ('9','Zabij 300 aniolow','Zabij bosa');
INSERT INTO Fabula (Fabula_ID, Misja,Poboczna_misja) VALUES ('10','Zabij 1000 demonow','');

INSERT INTO Mapa (Mapa_ID,Nazwa,Teren) VALUES ('1','Downhang','Pustynia');
INSERT INTO Mapa (Mapa_ID,Nazwa,Teren) VALUES ('2','Karakoram','Lodowa pustynia');
INSERT INTO Mapa (Mapa_ID,Nazwa,Teren) VALUES ('3','Hotan','Lasy');

INSERT INTO Przedmiot (Przedmiot_ID,Rzadkosc,Atak,Obrona,Mapa_ID) VALUES ('1','Normalny','5','3','1');
INSERT INTO Przedmiot (Przedmiot_ID,Rzadkosc,Atak,Obrona,Mapa_ID) VALUES ('2','Rzadki','10','5','1');
INSERT INTO Przedmiot (Przedmiot_ID,Rzadkosc,Atak,Obrona,Mapa_ID) VALUES ('3','Legendarny','30','20','1');
INSERT INTO Przedmiot (Przedmiot_ID,Rzadkosc,Atak,Obrona,Mapa_ID) VALUES ('4','Normalny','28','20','2');
INSERT INTO Przedmiot (Przedmiot_ID,Rzadkosc,Atak,Obrona,Mapa_ID) VALUES ('5','Rzadki','40','30','2');
INSERT INTO Przedmiot (Przedmiot_ID,Rzadkosc,Atak,Obrona,Mapa_ID) VALUES ('6','Legendarny','60','40','2');
INSERT INTO Przedmiot (Przedmiot_ID,Rzadkosc,Atak,Obrona,Mapa_ID) VALUES ('7','Normalny','65','45','3');
INSERT INTO Przedmiot (Przedmiot_ID,Rzadkosc,Atak,Obrona,Mapa_ID) VALUES ('8','Rzadki','75','50','3');
INSERT INTO Przedmiot (Przedmiot_ID,Rzadkosc,Atak,Obrona,Mapa_ID) VALUES ('9','Normalny','90','60','3');
INSERT INTO Przedmiot (Przedmiot_ID,Rzadkosc,Atak,Obrona,Mapa_ID) VALUES ('10','Heroiczny','150','100','3');

INSERT INTO NPC (NPC_ID,Funkcja,Fabula_ID) VALUES ('1','Przynies ziemniaki','1');
INSERT INTO NPC (NPC_ID,Funkcja,Fabula_ID) VALUES ('2','Upoluj 5 psow','1');
INSERT INTO NPC (NPC_ID,Funkcja,Fabula_ID) VALUES ('3','Zabij 1000 demonow','1');
INSERT INTO NPC (NPC_ID,Funkcja,Fabula_ID) VALUES ('4','Zabij golema','1');
INSERT INTO NPC (NPC_ID,Funkcja,Fabula_ID) VALUES ('5','Zdobadz 10 trucizny pajaka','1');

INSERT INTO Postac (Postac_ID,Nazwa,Poziom,Fabula_ID) VALUES ('1','xxKozakxx99PL','20','1');
INSERT INTO Postac (Postac_ID,Nazwa,Poziom,Fabula_ID) VALUES ('2','JestemKozak','30','1');
INSERT INTO Postac (Postac_ID,Nazwa,Poziom,Fabula_ID) VALUES ('3','Pogromca','40','1');
INSERT INTO Postac (Postac_ID,Nazwa,Poziom,Fabula_ID) VALUES ('4','asdsgdsd','50','1');

INSERT INTO Postac_Mapa (Postac_ID,Mapa_ID) VALUES ('1' , '2');
INSERT INTO Postac_Mapa (Postac_ID,Mapa_ID) VALUES ('4' , '3');
INSERT INTO Postac_Mapa (Postac_ID,Mapa_ID) VALUES ('3' , '3');
INSERT INTO Postac_Mapa (Postac_ID,Mapa_ID) VALUES ('2' , '1');

INSERT INTO postac_przedmiot VALUES (1,2,7);
INSERT INTO postac_przedmiot VALUES (2,3,4);
INSERT INTO postac_przedmiot VALUES (3,4,10);
INSERT INTO postac_przedmiot VALUES (4,1,1);
INSERT INTO postac_przedmiot VALUES (5,4,6);
INSERT INTO postac_przedmiot VALUES (6);
INSERT INTO postac_przedmiot VALUES (7,1);


INSERT INTO Postac_Przeciwnik (Postac_ID,Przeciwnik_ID) VALUES ('1','1');
INSERT INTO Postac_Przeciwnik (Postac_ID,Przeciwnik_ID) VALUES ('3','2');
INSERT INTO Postac_Przeciwnik (Postac_ID,Przeciwnik_ID) VALUES ('4','3');
INSERT INTO Postac_Przeciwnik (Postac_ID,Przeciwnik_ID) VALUES ('2','2');
INSERT INTO Postac_Przeciwnik (Postac_ID,Przeciwnik_ID) VALUES ('3','10');

