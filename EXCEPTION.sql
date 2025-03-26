DELIMITER //
CREATE PROCEDURE HandleDividedbyzero(
    IN numerator INT,
    IN denominator INT
)
BEGIN
    DECLARE result DECIMAL(10, 2);
    
    IF denominator = 0 THEN
        SIGNAL SQLSTATE '45000'

        SET MESSAGE_TEXT = 'Division by zero is not allowed.';
    ELSE
        SET result = numerator / denominator;
        SELECT result AS divisionResult;
    END IF;
END //

DELIMITER ;

CALL HandleDividedbyzero(10, 2);
CALL HandleDividedbyzero(10, 0);