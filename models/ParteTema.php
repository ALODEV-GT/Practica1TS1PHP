<?php

class ParteTema
{
    private $idParte;
    private $idTema;
    private $titulo;
    private $contenido;


    public function __construct($idParte, $idTema, $titulo, $contenido)
    {
        $this->idParte = $idParte;
        $this->idTema = $idTema;
        $this->titulo = $titulo;
        $this->contenido = $contenido;
    }

    public function getIdParte()
    {
        return $this->idParte;
    }

    public function getIdTema()
    {
        return $this->idTema;
    }

    public function getTitulo()
    {
        return $this->titulo;
    }

    public function getContenido()
    {
        return $this->contenido;
    }
}
