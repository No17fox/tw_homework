ALTER TABLE student MODIFY id INT PRIMARY KEY AUTO_INCREMENT;
SHOW INDEX FROM student;

ALTER TABLE subject MODIFY id INT PRIMARY KEY AUTO_INCREMENT;
SHOW INDEX FROM subject;

ALTER TABLE score MODIFY id INT PRIMARY KEY AUTO_INCREMENT;
SHOW INDEX FROM score;

ALTER TABLE student MODIFY name VARCHAR(100) NOT NULL;
ALTER TABLE student MODIFY sex CHAR(100) DEFAULT '男';
DESCRIBE student;

ALTER TABLE subject MODIFY subject VARCHAR(100) UNIQUE NOT NULL;
ALTER TABLE subject MODIFY teacher VARCHAR(100) NOT NULL;
DESCRIBE subject;

ALTER TABLE score ADD FOREIGN KEY (student_id) REFERENCES student(id);
ALTER TABLE score ADD FOREIGN KEY (subject_id) REFERENCES subject(id);
ALTER TABLE score MODIFY score DOUBLE NOT NULL;
DESCRIBE score;

DELETE FROM score
WHERE student_id = 1;

SELECT * FROM score;

INSERT INTO score(student_id, subject_id, score)
VALUES
	(1, 1001, 90);
    
SELECT * FROM score;