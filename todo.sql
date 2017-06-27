todolist=# CREATE TABLE todos(
id SERIAL PRIMARY KEY,
title VARCHAR(255) NOT NULL,
details TEXT NULL,
priority INTEGER NOT NULL DEFAULT 1,
created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
completed_at TIMESTAMP WITHOUT TIME ZONE NULL
);

INSERT INTO todos (title, details, priority) VALUES ('Grocery shopping',
    'Go grocery shopping for the week', 1);
INSERT INTO todos (title, details, priority) VALUES ('Make doctors appointment',
'Make an appointment with my primary care physician', 2);
INSERT INTO todos (title, details, priority) VALUES ('Dry cleaning',
'Pick up dry cleaning', 2);
INSERT INTO todos (title, details, priority) VALUES ('Studying',
'Study for SQL lessons at TIY', 1);
INSERT INTO todos (title, details, priority) VALUES ('Library',
'Return library books before they become overdue', 1);

SELECT * FROM todos WHERE completed_at IS NULL;

SELECT * FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = '2017-06-27' WHERE id = 2

DELETE FROM todos WHERE completed_at IS NULL;
