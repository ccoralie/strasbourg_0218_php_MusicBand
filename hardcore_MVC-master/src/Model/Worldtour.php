<?php

namespace Model;

class Worldtour
{
    private $id;
    private $dateconcert;
    private $ville;
    private $salle;


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
    public function getDateconcert()
    {
        return $this->dateconcert;
    }

    /**
     * @param mixed $dateconcert
     */
    public function setDateconcert($dateconcert)
    {
        $this->dateconcert = $dateconcert;
    }



    /**
     * @return mixed
     */
    public function getVille()
    {
        return $this->ville;
    }

    /**
     * @param mixed $ville
     */
    public function setVille($ville)
    {
        $this->ville = $ville;
    }


    /**
     * @return mixed
     */
    public function getSalle()
    {
        return $this->salle;
    }

    /**
     * @param mixed $salle
     */
    public function setSalle($salle)
    {
        $this->salle = $salle;
    }



}