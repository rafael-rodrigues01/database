CREATE TABLE books (
    isbn VARCHAR(13) PRIMARY KEY,
    title VARCHAR(255),
    publisher VARCHAR(100),
    publication_year INTEGER
);

INSERT INTO books (isbn, title, publisher, publication_year) VALUES
('9780575081504', 'Exemplo de Livro 1', 'Editora A', 2005),
('9781451673319', 'Exemplo de Livro 2', 'Editora B', 2012),
('9780066620992', 'Exemplo de Livro 3', 'Editora C', 2008),
('9780066620991', 'Exemplo de Livro 4', 'Editora D', 2015),
('9781400034772', 'Exemplo de Livro 5', 'Editora E', 2019),
('9780316769488', 'Exemplo de Livro 6', 'Editora F', 2003),
('9780316769174', 'Exemplo de Livro 7', 'Editora G', 2011),
('9780316769471', 'Exemplo de Livro 8', 'Editora H', 2016),
('9780679781587', 'Exemplo de Livro 9', 'Editora I', 2007),
('9780679433131', 'Exemplo de Livro 10', 'Editora J', 2014);

CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    author_name VARCHAR(100)
);

INSERT INTO authors (author_name) VALUES
('José Silva'),
('Ana Oliveira'),
('Carlos Santos'),
('Mariana Costa'),
('Pedro Pereira'),
('Sara Ferreira'),
('Rui Martins'),
('Inês Sousa'),
('Luís Fernandes'),
('Marta Almeida');

CREATE TABLE books_authors(
	isbn VARCHAR(13),
	CONSTRAINT isbn FOREIGN KEY(isbn) REFERENCES books(isbn),
	 author_id SERIAL,
	CONSTRAINT  author_id FOREIGN KEY(author_id) REFERENCES authors(author_id)
);

INSERT INTO books_authors (isbn, author_id) VALUES
('9780575081504', 10),
('9781451673319', 9),
('9780066620992', 3),
('9780066620991', 8),
('9781400034772', 1),
('9780316769488', 3),
('9780316769174', 7),
('9780316769471', 3),
('9780679781587', 2),
('9780679433131', 7);