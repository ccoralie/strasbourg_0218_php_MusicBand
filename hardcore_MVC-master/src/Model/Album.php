<?php

namespace Model;

class Album
{
    private $id;
    private $album;
    private $pochetteAlbum;
    private $extraitMusique;


    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param mixed $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     * @return mixed
     */
    public function getAlbum()
    {
        return $this->album;
    }

    /**
     * @param mixed $album
     */
    public function setAlbum($album)
    {
        $this->album = $album;
    }



    /**
     * @return mixed
     */
    public function getPochetteAlbum()
    {
        return $this->pochetteAlbum;
    }

    /**
     * @param mixed $pochetteAlbum
     */
    public function setPochetteAlbum($pochetteAlbum)
    {
        $this->pochetteAlbum = $pochetteAlbum;
    }



    /**
     * @return mixed
     */
    public function getExtraitMusique()
    {
        return $this->extraitMusique;
    }

    /**
     * @param mixed $extraitMusique
     */
    public function setExtraitMusique($extraitMusique)
    {
        $this->extraitMusique = $extraitMusique;
    }



    public function lectureExtraitMusique()
    {
        //lecture de la musique
    }
}