DELIMITER //
CREATE PROCEDURE get_even(`start` INT, `end` INT)
BEGIN
	DECLARE i INT DEFAULT `start`;
    DECLARE res_str TEXT DEFAULT NULL;
    IF i MOD 2 = 1 THEN
        SET i = i + 1;
    END IF;
    WHILE  i<=`end` DO
		IF res_str IS NULL THEN
			SET res_str = concat(i);
		ELSE
			SET res_str = concat(res_str, ', ', i);
		END IF;
        SET i = i + 2;
    END WHILE;
	SELECT res_str;
END //
DELIMITER ;

CALL get_even(1, 10);
