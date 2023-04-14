<?php

class Tema
{
    private $idTema;
    private $nombreUsuario;
    private $titulo;


    public function __construct($idTema, $nombreUsuario, $titulo)
    {
        $this->idTema = $idTema;
        $this->nombreUsuario = $nombreUsuario;
        $this->titulo = $titulo;
    }

    public function getIdTema()
    {
        return $this->idTema;
    }

    public function getNombreUsuario()
    {
        return $this->nombreUsuario;
    }

    public function getTitulo()
    {
        return $this->titulo;
    }
}
