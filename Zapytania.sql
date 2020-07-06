--JOIN
SELECT * FROM PRZEDMIOT LEFT JOIN POSTAC ON PRZEDMIOT_ID = POSTAC_ID;

SELECT * FROM PRZECIWNIK INNER JOIN POSTAC ON POSTAC_ID = PRZECIWNIK_ID;


SELECT rzadkosc from PRZEDMIOT WHERE rzadkosc like '%ma%';
-- ilike
SELECT * from POSTAC WHERE nazwa ILIKE 'xx%';

SELECT * FROM NPC WHERE funkcja like '%ziemniaki';
--Update
UPDATE fabula set poboczna_misja = NULL WHERE poboczna_misja = '';
UPDATE npc set funkcja = NUll WHERE NPC_ID = 2;

--NULL
SELECT * FROM FABULA WHERE poboczna_misja = Null; 
SELECT * FROM npc WHERE funkcja is NULL;

--GROUP
 SELECT rzadkosc, COUNT(*) as ilosc FROM przedmiot GROUP BY rzadkosc ORDER BY ilosc ASC;

 SELECT nazwa,poziom from przeciwnik GROUP BY nazwa,poziom ORDER BY poziom DESC;

--DELETE 

DELETE FROM przeciwnik WHERE przeciwnik_id = 5;
DELETE FROM fabula WHERE Misja = "przynies ziemniaki";

-- VIEW

CREATE VIEW widok AS SELECT * FROM postac ORDER BY poziom DESC;

CREATE VIEW widok2 AS SELECT * FROM przedmiot ORDER BY rzadkosc;

--NESTED/NOT

SELECT postac_id, przedmiot_id from postac_przedmiot
WHERE przedmiot_id NOT IN
(SELECT przedmiot_id FROM przedmiot WHERE postac_przedmiot.przedmiot_id = przedmiot.przedmiot_id);

SELECT rzadkosc,atak,obrona FROM przedmiot WHERE rzadkosc IN
(SELECT rzadkosc FROM przedmiot GROUP BY rzadkosc HAVING COUNT(*) > 1 );

SELECT postac_id,mapa_id FROM Postac_Mapa WHERE mapa_id NOT IN ('1','2');

SELECT postac_id,mapa_id FROM Postac_Mapa WHERE mapa_id NOT IN (SELECT Mapa_ID from MAPA WHERE Mapa_ID = '1');


--OPER 
UPDATE Postac set Poziom = Poziom + 1 where Postac_ID = 2; 

SELECT AVG (Poziom ) FROM Postac;


--trigger przy tworzeniu postaci ustawia poziom na 1
CREATE OR REPLACE FUNCTION ustawPoziom()
RETURNS TRIGGER AS $$
BEGIN
UPDATE Postac set Poziom = 1 WHERE POSTAC_ID = NEW.Postac_id ;
RETURN NEW ;
END;
 $$ 
LANGUAGE plpgsql;

CREATE TRIGGER wyzwalacz
AFTER INSERT ON Postac
FOR EACH ROW 
EXECUTE PROCEDURE ustawPoziom();