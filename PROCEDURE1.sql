CREATE TABLE account (
    account_no INT PRIMARY KEY,
    account_holder VARCHAR(20),
    balance DECIMAL(10, 2)
);

-- Insert example records
INSERT INTO account VALUES (1, 'Alice', 10000.00);
INSERT INTO account VALUES (2, 'Bob', 5000.00);

-- Procedure to deposit money
DELIMITER //
CREATE PROCEDURE deposit_money(IN p_account_no INT, IN p_amount DECIMAL(10, 2))
BEGIN
    UPDATE account
    SET balance = balance + p_amount
    WHERE account_no = p_account_no;
    SELECT 'Deposit successful.' AS Message;
END //
DELIMITER ;

-- Procedure to withdraw money
DELIMITER //
CREATE PROCEDURE withdraw_money(IN p_account_no INT, IN p_amount DECIMAL(10, 2))
BEGIN
    DECLARE current_balance DECIMAL(10, 2);
    
    SELECT balance INTO current_balance 
    FROM account 
    WHERE account_no = p_account_no;

    IF current_balance >= p_amount THEN
        UPDATE account
        SET balance = balance - p_amount
        WHERE account_no = p_account_no;
        SELECT 'Withdrawal successful.' AS Message;
    ELSE
        SELECT 'Insufficient balance.' AS Message;
    END IF;
END //
DELIMITER ;

-- Procedure to check balance
DELIMITER //
CREATE PROCEDURE check_balance(IN p_account_no INT)
BEGIN
    SELECT balance AS Current_Balance
    FROM account
    WHERE account_no = p_account_no;
END //
DELIMITER ;

-- Usage examples
CALL deposit_money(1, 2000.00); -- Deposit money to account 1
CALL withdraw_money(1, 3000.00); -- Withdraw money from account 2
CALL check_balance(1); -- Check balance of account 1
