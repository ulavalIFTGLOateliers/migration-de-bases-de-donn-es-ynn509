UPDATE musician SET role = NULL, bandName = NULL;
ALTER TABLE musician DROP COLUMN bandName;
ALTER TABLE musician DROP COLUMN role;
ALTER TABLE musician CHANGE COLUMN musicianName singerName VARCHAR(50);
ALTER TABLE musician RENAME TO singer;
DROP TABLE band;