<?php

class Usuario
{
    private $nombreUsuario;
    private $nombre;

    public function __construct($nombreUsuario, $nombre)
    {
        $this->nombreUsuario = $nombreUsuario;
        $this->nombre = $nombre;
    }

    public function getNombreUsuario()
    {
        return $this->nombreUsuario;
    }

    public function getNombre()
    {
        return $this->nombre;
    }
}
