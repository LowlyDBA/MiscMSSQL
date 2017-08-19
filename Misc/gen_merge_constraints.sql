


SELECT N'
ALTER TABLE ' + SCHEMA_NAME(SCHEMA_ID) + '.' + OBJECT_NAME(PARENT_OBJECT_ID) + ' DROP CONSTRAINT ' + OBJECT_NAME(OBJECT_ID) + ';' 
FROM SYS.OBJECTS
WHERE TYPE_DESC LIKE '%CONSTRAINT' AND OBJECT_NAME(OBJECT_ID) LIKE 'MSmerge%' OR OBJECT_NAME(OBJECT_ID) LIKE '%rowguid' OR OBJECT_NAME(OBJECT_ID) LIKE '%rowgu%'