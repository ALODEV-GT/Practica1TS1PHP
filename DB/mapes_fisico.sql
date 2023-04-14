
CREATE DATABASE maiz;
USE maiz;


CREATE TABLE usuario(
    nombre_usuario VARCHAR(25) NOT NULL,
    nombre VARCHAR(25) NOT NULL,
    PRIMARY KEY(nombre_usuario)
);

CREATE TABLE tema(
    id_tema INT AUTO_INCREMENT,
    nombre_usuario VARCHAR(25) NOT NULL,
    titulo VARCHAR(125) NOT NULL,
    PRIMARY KEY(id_tema),
    FOREIGN KEY(nombre_usuario) REFERENCES usuario(nombre_usuario) 
);

CREATE TABLE parte_tema(
    id_parte INT AUTO_INCREMENT,
    id_tema INT NOT NULL,
    titulo VARCHAR(125) NOT NULL,
    contenido VARCHAR(5000) NOT NULL,
    PRIMARY KEY(id_parte),
    FOREIGN KEY(id_tema) REFERENCES tema(id_tema)
);

CREATE TABLE comentario(
    id_comentario INT AUTO_INCREMENT,
    nombre_usuario VARCHAR(25) NOT NULL,
    comentario VARCHAR(3000) NOT NULL,
    PRIMARY KEY(id_comentario),
    FOREIGN KEY(nombre_usuario) REFERENCES usuario(nombre_usuario)
);

------------ DATA --------------
INSERT INTO usuario VALUES('baaq', "Alex Alonzo");
INSERT INTO usuario VALUES('midk', "Brayan Quijivix");

INSERT INTO tema(nombre_usuario, titulo) VALUES('baaq', 'Proceso del cultivo de maiz');
INSERT INTO tema(nombre_usuario, titulo) VALUES('midk', 'Maiz y sus colores');
INSERT INTO tema(nombre_usuario, titulo) VALUES('baaq', 'Maiz como moneda');

INSERT INTO parte_tema(id_tema, titulo, contenido) VALUES(1, 'La seleccion de los mejores ejemplares de la cosecha de
 maiz es una tarea esencial en el proceso de cultivo.
Durante esta etapa, se evalua cuidadosamente cada mazorca de maiz para determinar 
cuales son los mejores ejemplares para ser cosechados, teniendo en cuenta tanto el grosor de la mazorca 
como el grosor del grano.

El grosor de la mazorca es un indicador clave de la calidad del maiz. Una mazorca gruesa suele indicar
que el maiz ha crecido de manera saludable y ha acumulado una cantidad adecuada de nutrientes. 

Los granos gruesos son indicativos de un maiz bien desarrollado y maduro, que tiene un alto contenido
de almidon.

Otro caracteristica a evaluar es la uniformidad del tamanio de los granos, algunas veces es necesario la 
seleccion individual de cada grano para garantizar la mayor calidad de produccion. 

En conlusion la seleccion de la semilla es una de lastareas mas importantes en la cual se debe dedicar
la debida atencion. ');
INSERT INTO parte_tema(id_tema, titulo, contenido) VALUES(1, 'Siembra', 
'Para esta parte es necesario almenos tener estas herramientas: azadon y recipiente para la semilla (garnil),
antes de la siembra algunas personas tienden a marcar los zurcos (filas de la cosecha) para tener una cosecha
ordenada y otros casos se usan pitas para tener exactitud tanto en las filas como en la separacion de cada 
planta.

El proceso consiste raspar la tierra seca hasta encontrar la tierra humeda, luego se procede a cabar un
agujero y poner los maices dentro, los maices deben estar distribuidos por el agujero, para que las 
plantas no crezcan muy juntas, por ultimo se tapan los maices con tierra.

En algunos casos cuando la tierra esta muy seca es necesario sembrar con agua. Ya sea remojando el maiz
por unos minutos o poniendo agua al momento de hacer el agujero.');
INSERT INTO parte_tema(id_tema, titulo, contenido) VALUES(1, 'Fumigacion para la eliminacion de plantas', 
'Este paso se puede omitir ya que es para facilitar el trabajo del siguiente paso (Primera raspa).
Cuando hay demasiadas plantas no deseadas y vuelve dificultoso la raspa se acostumbra eliminar la 
mayor parte de estas con veneno. Para que la raspa sea mas sencilla.');
INSERT INTO parte_tema(id_tema, titulo, contenido) VALUES(1, 'Primera raspa', 
'En este paso con un azadon cortamos las diferentes plantas no deseadas tratanto de dejar las raices hacia el sol
de esta manera no puedan volver a crecer o recuperarse.');
INSERT INTO parte_tema(id_tema, titulo, contenido) VALUES(1, 'Abonado organico, quimico y calzado', 
'Normalmente esto se hace inmediatamente despues del paso anterior, se ponen las plantas muertas debajo de la 
milpa y tambien se agrega abono quimico y abono organico, el abono organico generalmente es estiercol de 
gallina o vacas.

El calzado consiste en crear una base para la milpa con tierra, esto evita la caida de las mismas
en los meses en la cual hay fuertes lluvias y vientos.');
INSERT INTO parte_tema(id_tema, titulo, contenido) VALUES(1, 'Segunda raspa', 
'Esta parte es opcional, ya que algunos acostumbran limpiar el terreno antes de realizar la tapizca, pero
ultimamente esta parte es omitida.');
INSERT INTO parte_tema(id_tema, titulo, contenido) VALUES(1, 'Tapizca', 
'En el proceso de la tapizca se recolectan las mazorcas, algunas personas botan las canias y otras prefieren
dejarlas paradas.');
INSERT INTO parte_tema(id_tema, titulo, contenido) VALUES(1, 'Deshojada', 
'Se retira el doblador de la mazorca con mucho cuidado ya que el doblador es utilizado para envolver tamales,
el doblador que no puede ser usado para envolver tamales sirve para alimentar animales.

El doblador para envolver tamales necesita ser secado antes de usarlo.

En esta parte se aprovecha para separar los diferentes de colores y tamanios de maiz. ');
INSERT INTO parte_tema(id_tema, titulo, contenido) VALUES(1, 'Secado del maiz', 
'Una vez deshojado el maiz se ponen en arpias o son puestos directamente en un lugar donde llega la luz solar,
esto hace que el maiz se seque.');
INSERT INTO parte_tema(id_tema, titulo, contenido) VALUES(1, 'Clasificacion del maiz', 
'Es el proceso de seleccionar los ejemplares que posiblemente seran la semilla de la siguiente siembra, 
tambien se clasifican las mazorcas por su color y tamanio.');
INSERT INTO parte_tema(id_tema, titulo, contenido) VALUES(1, 'Granado', 
'Se retira cada grano de maiz de la mazorca, este proceso se realizaba a mano sin embargo acualmente existen
maquinas que realizan este proceso aunque algunas personas prefieren realizarlo a mano para una mayor
clasificacion del maiz.');
INSERT INTO parte_tema(id_tema, titulo, contenido) VALUES(1, 'Curacion', 
'Se aplica veneno al maiz para evitar la aparicion de maripositas que comen el maiz.');
INSERT INTO parte_tema(id_tema, titulo, contenido) VALUES(1, 'Guardado', 
'Una vez curado el maiz puede ser almacenado en cajas, costales u otros recipientes.

El maiz puede estar en buen estado hasta por mas de 2 anios.');

INSERT INTO parte_tema(id_tema, titulo, contenido) VALUES(2, 'Titulo T2 1', 'Por escribir...');
INSERT INTO parte_tema(id_tema, titulo, contenido) VALUES(2, 'Titulo T2 2', 'Por escribir...');
INSERT INTO parte_tema(id_tema, titulo, contenido) VALUES(2, 'Titulo T2 3', 'Por escribir...');

INSERT INTO parte_tema(id_tema, titulo, contenido) VALUES(3, 'Titulo T3 1', 'Por escribir...');
INSERT INTO parte_tema(id_tema, titulo, contenido) VALUES(3, 'Titulo T3 2', 'Por escribir...');
INSERT INTO parte_tema(id_tema, titulo, contenido) VALUES(3, 'Titulo T3 3', 'Por escribir...');

INSERT INTO comentario(nombre_usuario, comentario) VALUES('baaq', 'Comentario 1');
INSERT INTO comentario(nombre_usuario, comentario) VALUES('baaq', 'Comentario 2');
INSERT INTO comentario(nombre_usuario, comentario) VALUES('midk', 'Comentario 3');
INSERT INTO comentario(nombre_usuario, comentario) VALUES('midk', 'Comentario 4');