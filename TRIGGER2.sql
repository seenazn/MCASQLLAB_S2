CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(255),
    Gender ENUM('Male', 'Female')
);
CREATE TABLE StudentCount (
    Gender ENUM('Male', 'Female') PRIMARY KEY,
    Count INT DEFAULT 0
);

INSERT INTO StudentCount (Gender, Count)
VALUES ('Male', 0), ('Female', 0);

DELIMITER $$

CREATE TRIGGER UpdateCountAfterInsert
AFTER INSERT ON Student
FOR EACH ROW
BEGIN
    IF NEW.Gender = 'Male' THEN
        UPDATE StudentCount
        SET Count = Count + 1
        WHERE Gender = 'Male';
    ELSEIF NEW.Gender = 'Female' THEN
        UPDATE StudentCount
        SET Count = Count + 1
        WHERE Gender = 'Female';
    END IF;
END$$. 

DELIMITER ;


DELIMITER $$

CREATE TRIGGER UpdateCountsAfterDelete
AFTER DELETE ON Student
FOR EACH ROW
BEGIN
    IF OLD.Gender = 'Male' THEN
        UPDATE StudentCount
        SET Count = Count - 1
        WHERE Gender = 'Male';
    ELSEIF OLD.Gender = 'Female' THEN
        UPDATE StudentCount
        SET Count = Count - 1
        WHERE Gender = 'Female';
    END IF;
END$$

DELIMITER ;


INSERT INTO Student (StudentID, Name, Gender)
VALUES (1, 'John', 'Male'), (2, 'Jane', 'Female');
SELECT * FROM StudentCount;
DELETE FROM Student WHERE StudentID = 1;
SELECT * FROM StudentCount;
