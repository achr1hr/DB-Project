CREATE TABLE Publisher (
    publisher_id INTEGER PRIMARY KEY,
    name VARCHAR(200) NOT NULL UNIQUE,
    address VARCHAR(200) NOT NULL
);

CREATE TABLE Genre (
    genre_id INTEGER PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    description VARCHAR(200) NOT NULL
);

CREATE TABLE Author (
    author_id INTEGER PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    country VARCHAR(200)
);

CREATE TABLE Reader (
    reader_id INTEGER PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    phone VARCHAR(20) NOT NULL UNIQUE,
    email VARCHAR(200) UNIQUE
);

CREATE TABLE Book (
    book_id INTEGER PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    year INTEGER NOT NULL,
    publisher_id INTEGER NOT NULL,
    author_id INTEGER NOT NULL,
    genre_id INTEGER NOT NULL,
    FOREIGN KEY (publisher_id) REFERENCES Publisher(publisher_id),
    FOREIGN KEY (author_id) REFERENCES Author(author_id),
    FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);

CREATE TABLE Loan (
    loan_id INTEGER PRIMARY KEY,
    loan_date DATE NOT NULL,
    return_date DATE NOT NULL,
    book_id INTEGER NOT NULL,
    reader_id INTEGER NOT NULL,
    FOREIGN KEY (book_id) REFERENCES Book(book_id),
    FOREIGN KEY (reader_id) REFERENCES Reader(reader_id)
);