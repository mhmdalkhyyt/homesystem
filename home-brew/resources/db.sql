DROP DATABASE IF EXISTS 'homesystem';
CREATE DATABASE 'homesystem';
USE a20muhal;


--Start of tables--
CREATE TABLE data_log(
    Nr int unique not null,

    primary key (Nr)

)ENGINE=INNODB;


DELIMITER $$
--Start of procedures--
CREATE PROCEDURE add_data_log(iNr INTEGER)
    BEGIN
        INSERT INTO data_log(Nr)
        VALUES (iNr);
    END$$


DELIMITER ;