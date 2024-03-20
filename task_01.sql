CREATE DATABASE HW_06;
use HW_06;

DELIMITER //
CREATE PROCEDURE second_counter(num INT)
BEGIN
    DECLARE _days INT DEFAULT 0;
    DECLARE _hours INT DEFAULT 0;
    DECLARE _minutes INT DEFAULT 0;
    DECLARE _seconds INT DEFAULT 0;

    IF num >= 86400 THEN
        SET _days = num DIV 86400;
        SET num = num MOD 86400;
    END IF;
    IF num >= 3600 THEN
        SET _hours = num DIV 3600;
        SET num = num MOD 3600;
    END IF;
    IF num >= 60 THEN
        SET _minutes = num DIV 60;
        SET num = num MOD 60;
    END IF;
    SET _seconds = num;

    SELECT CONCAT_WS(' ', _days, 'days', _hours, 'hours', _minutes, 'minutes', _seconds, 'seconds') AS Result;
END//
DELIMITER ;

CALL second_counter(123456);