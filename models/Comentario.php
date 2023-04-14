<?php

class Comentario
{
    private $idComentario;
    private $nombreUsuario;
    private $comentario;


    public function __construct($idComentario, $nombreUsuario, $comentario)
    {
        $this->idComentario = $idComentario;
        $this->nombreUsuario = $nombreUsuario;
        $this->comentario = $comentario;
    }

    public function getIdComentario()
    {
        return $this->idComentario;
    }

    public function getNombreUsuario()
    {
        return $this->nombreUsuario;
    }

    public function getComentario()
    {
        return $this->comentario;
    }
}
