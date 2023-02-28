CREATE TABLE author (
                        id SERIAL NOT NULL PRIMARY KEY,
                        name VARCHAR(50) NOT NULL
);
INSERT INTO author(name)
VALUES ('Толстой'),
       ('Булгаков');

CREATE TABLE book
(
    book_id   SERIAL      NOT NULL PRIMARY KEY,
    name      VARCHAR(50) NOT NULL,
    author_id INT         NOT NULL,
    FOREIGN KEY (author_id) REFERENCES author (id)
);
INSERT INTO book(name, author_id)
VALUES ('Война и мир, т.1', 1),
       ('Война и мир, т.2', 1),
       ('Мастер и Маргарита', 2);

SELECT book.name FROM book
                          INNER JOIN author ON book.author_id = author.id
WHERE author.name = 'Толстой';

