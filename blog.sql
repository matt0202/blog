\c postgres
DROP DATABASE blog

CREATE DATABASE blog
\c blog
CREATE TABLE peliculas(
    id SERIAL,
    usuarios VARCHAR8,
    post INT,
    comentarios VARCHAR,
    PRIMARY KEY(id) 
);

-- cargar archivo

\copy usuarios FROM './usuario.csv' csv header;

\copy post FROM './post.csv' csv header;

\copy comentarios FROM './comentarios.csv' csv header;

--Seleccionar el correo, id y título de todos los post publicados por el usuario 5

SELECT usuarios,anio FROM post WHERE anio BETWEEN 5 ORDER BY post ASC;

--Listarelcorreo,idyeldetalledetodosloscomentariosquenohayansidorealizadospor el usuario con email ​usuario06@hotmail.com​

 SELECT usuarios_id, LENGTH(comentarios) AS post_id FROM (correo,id,comentarios);

 --Listar los usuarios que no han publicado ningún post

 SELECT (LENGTH(usuarios)) FROM comentarios;