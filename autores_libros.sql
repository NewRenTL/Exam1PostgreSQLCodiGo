CREATE TABLE IF NOT EXISTS autores_libros(
    autor_id integer,
    ISBN varchar
);

ALTER TABLE autores_libros ADD PRIMARY KEY(autor_id,ISBN);
ALTER TABLE autores_libros ADD CONSTRAINT fk_autor_id_alib FOREIGN KEY(autor_id) REFERENCES autores(autor_id);
ALTER TABLE autores_libros ADD CONSTRAINT fk_ISBN_alib FOREIGN KEY(ISBN) REFERENCES libros(ISBN);

