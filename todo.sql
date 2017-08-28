DROP TABLE todos;
CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(4000) NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP DEFAULT NOW(),
  completed_at TIMESTAMP
);

INSERT INTO todos (title, priority, completed_at)
VALUES
('Gym', 0, NOW()),
('Grocery Store', 1, NULL),
('Clean Room',2, NULL),
('Order Pizza', 2, NULL),
('Learn SQL', 3, NULL);


SELECT * FROM todos WHERE completed_at IS NULL;
SELECT * FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = NOW() WHERE id = 3;

DELETE FROM todos WHERE completed_at IS NOT NULL;
