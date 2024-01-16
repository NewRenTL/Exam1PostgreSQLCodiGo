
CREATE TABLE IF NOT EXISTS prestamos(
    prestamo_id serial primary key,
    fecha_prestamo date not null default CURRENT_DATE,
    fecha_devolucion_esperada date not null,
    isbn varchar not null ,
    lector_id integer not null
);

ALTER TABLE prestamos ADD CONSTRAINT fk_isbn_prst FOREIGN KEY(isbn) REFERENCES libros(isbn);
ALTER TABLE prestamos ADD CONSTRAINT fk_lector_id_prst FOREIGN KEY(lector_id) REFERENCES lectores(lector_id);

