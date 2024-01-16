CREATE TABLE IF NOT EXISTS libros_categorias(
    ISBN varchar,
    categoria_id integer
);

ALTER TABLE libros_categorias ADD PRIMARY KEY(ISBN,categoria_id);
ALTER TABLE libros_categorias ADD CONSTRAINT fk_ISBN_lcat FOREIGN KEY(ISBN) REFERENCES libros(ISBN);
ALTER TABLE libros_categorias ADD CONSTRAINT fk_categoria_lcat FOREIGN KEY(categoria_id) REFERENCES categorias(categoria_id);

