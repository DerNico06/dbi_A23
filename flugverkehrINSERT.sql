delete from fliegt;
delete from flug;
delete from flugverbindung;
delete from passagier;
delete from flugzeug;
delete from flughafen;
commit;

INSERT INTO flughafen VALUES('KLU','Klagenfurt');
INSERT INTO flughafen VALUES('VIE','Wien');
INSERT INTO flughafen VALUES('FRA','Frankfurt');

INSERT INTO flugzeug VALUES(11,'Airbus A300',280,2012);
INSERT INTO flugzeug VALUES(22,'Boeing 707',128,1977);
INSERT INTO flugzeug VALUES(33,'Fokker',1,2001);
INSERT INTO flugzeug VALUES(44,'Herkules',3,1984);

INSERT INTO passagier VALUES(11,'Herbert', 'Maier', TO_DATE('12.03.1978','DD.MM.YYYY'), 'P00123456');
INSERT INTO passagier VALUES(22,'Horst', 'Prohaska', TO_DATE('12.05.1936','DD.MM.YYYY'),'P00587946');
INSERT INTO passagier VALUES(33,'Doris', 'Tagger', TO_DATE('12.12.1987','DD.MM.YYYY'), 'P00987315');
INSERT INTO passagier VALUES(44,'Frederike', 'Berger', TO_DATE('12.12.1989','DD.MM.YYYY'), 'P00756314');
INSERT INTO passagier VALUES(55,'Tobias', 'Dorfhauser', TO_DATE('12.12.1989','DD.MM.YYYY'), 'P00445632');

INSERT INTO flugverbindung VALUES('LH1420','MO 15:00-16:00','KLU','VIE');
INSERT INTO flugverbindung VALUES('OS0815','MI 16:00-17:00','KLU','VIE');
INSERT INTO flugverbindung VALUES('EW1760','MO 15:00-16:00','VIE','FRA');
INSERT INTO flugverbindung VALUES('EW1860','MI 16:00-17:00','VIE','FRA');
INSERT INTO flugverbindung VALUES('OS2040','DI 15:00-16:00','VIE','KLU');
INSERT INTO flugverbindung VALUES('OS2050','FR 16:00-17:00','VIE','KLU');

INSERT INTO flug VALUES(1,'LH1420',TO_DATE('12.01.2018'),11);
INSERT INTO flug VALUES(2,'LH1420',TO_DATE('12.02.2018'),22);
INSERT INTO flug VALUES(3,'OS0815',TO_DATE('14.02.2018'),22);
INSERT INTO flug VALUES(4,'EW1860',TO_DATE('14.03.2018'),22);
INSERT INTO flug VALUES(5,'OS2050',TO_DATE('14.12.2018'),11);
INSERT INTO flug VALUES(6,'OS2050',TO_DATE('14.11.2018'),33);
INSERT INTO flug VALUES(7,'OS2050',TO_DATE('14.04.2018'),44);

INSERT INTO fliegt VALUES(1,11);
INSERT INTO fliegt VALUES(1,22);
INSERT INTO fliegt VALUES(2,11);
INSERT INTO fliegt VALUES(2,33);
INSERT INTO fliegt VALUES(3,33);
INSERT INTO fliegt VALUES(6,11);
INSERT INTO fliegt VALUES(4,22);
INSERT INTO fliegt VALUES(4,11);
INSERT INTO fliegt VALUES(7,22);
INSERT INTO fliegt VALUES(7,33);
INSERT INTO fliegt VALUES(7,44);

COMMIT;