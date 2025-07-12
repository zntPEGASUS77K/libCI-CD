CREATE SCHEMA libs;

CREATE TABLE libs.books (
                            id SERIAL PRIMARY KEY,
                            title VARCHAR(255) NOT NULL,
                            author VARCHAR(255) NOT NULL,
                            isbn VARCHAR(13) UNIQUE NOT NULL,
                            published_date DATE,
                            created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                            updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_books_isbn ON libs.books(isbn);