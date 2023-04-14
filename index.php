<?php
require 'flight/Flight.php';

Flight::before('json', function () {
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: GET, POST, PATCH, PUT, DELETE, OPTIONS');
    header("Access-Control-Allow-Headers: Content-Type, Accept, Authorization, X-Requested-With, X-Auth-Token, Origin, Application");
});

Flight::register('db', 'PDO', array('mysql:host=localhost;dbname=maiz', 'root', ''));

Flight::route('GET /temas', function () {
    $sentencia = Flight::db()->prepare("SELECT * FROM tema");
    $sentencia->execute();
    $datos = $sentencia->fetchAll();
    Flight::json($datos);
});

Flight::route('GET /tema/@id', function ($id) {
    $sentencia = Flight::db()->prepare("SELECT * FROM parte_tema WHERE id_tema=?");
    $sentencia->bindParam(1, $id);
    $sentencia->execute();
    $datos = $sentencia->fetchAll();
    Flight::json($datos);
});

Flight::route('GET /parte-tema/@id', function ($id) {
    $sentencia = Flight::db()->prepare("SELECT * FROM parte_tema WHERE id_parte=?");
    $sentencia->bindParam(1, $id);
    $sentencia->execute();
    $datos = $sentencia->fetchAll();
    Flight::json($datos);
});

Flight::route('GET /comentarios', function () {
    $sentencia = Flight::db()->prepare("SELECT * FROM comentario ORDER BY id_comentario DESC");
    $sentencia->execute();
    $datos = $sentencia->fetchAll();
    Flight::json($datos);
});

Flight::route('POST /comentar', function () {
    $nombreUsuario = (Flight::request()->data->nombre_usuario);
    $comentario = (Flight::request()->data->comentario);

    $sql = "INSERT INTO comentario(nombre_usuario, comentario) VALUES(?,?)";
    $sentencia = Flight::db()->prepare($sql);
    $sentencia->bindParam(1, $nombreUsuario);
    $sentencia->bindParam(2, $comentario);
    $sentencia->execute();
});

Flight::start();
