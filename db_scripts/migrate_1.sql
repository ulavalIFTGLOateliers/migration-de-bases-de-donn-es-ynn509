use atelier_bd;
show tables;
CREATE TABLE band(bandName VARCHAR(50), creation YEAR, genre VARCHAR(50), primary key (Bandname));
insert into band Values ("Crazy Duo", 2015, "rock"),("Luna",2009,"classical"),
("Mysterio",2019,"pop");
ALTER TABLE singer RENAME TO musician;
SHOW TABLES ;
SELECT * FROM musician;
ALTER TABLE musician
    RENAME column singerName TO musicianName;
ALTER TABLE musician ADD role varchar(50);
select * from musician;
UPDATE musician
SET role = 'vocals'
WHERE musicianName = 'Alina';
UPDATE musician
SET role = 'piano'
WHERE musicianName = 'Luna';
UPDATE musician
SET role = 'guitar'
WHERE musicianName = 'Mysterio';
UPDATE musician
SET role = 'percussion'
WHERE musicianName = 'Rainbow';
select * from musician;
alter table musician add bandName varchar(50);
UPDATE musician
SET bandName = 'Crazy Duo'
WHERE musicianName = 'Alina';
UPDATE musician
SET bandName = 'Luna'
WHERE musicianName = 'Luna';
UPDATE musician
SET bandName = 'Crazy Duo'
WHERE musicianName = 'Rainbow';
UPDATE musician
SET bandName = 'Mysterio'
WHERE musicianName = 'Mysterio';
select * from album;
ALTER TABLE album
ADD CONSTRAINT fk_singerName
FOREIGN KEY (singerName) REFERENCES musician(musicianName);
ALTER TABLE album
ADD CONSTRAINT fk_labelName
FOREIGN KEY (labelName) REFERENCES label(labelName);
show tables;