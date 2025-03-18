DELIMITER $$
CREATE FUNCTION SumTwoNumbers(num1 INT, num2 INT)
RETURNS INT
DETERMINISTIC
BEGIN
RETURN num1 + num2; -- Return the sum of two numbers
END$$
DELIMITER ;
SELECT SumTwoNumbers(10, 20) AS Result;