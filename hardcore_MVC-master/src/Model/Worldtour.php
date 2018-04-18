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

    public function addDateconcert()
    {
        //ajout date
    }

    public function updateDateconcert()
    {
        //MAJ date
    }

    public function deleteDateconcert()
    {
        //supprimer date
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

    public function addVille()
    {
        //ajout ville
    }

    public function updateVille()
    {
        //MAJ Ville
    }

    public function deleteVille()
    {
        //supprimer Ville
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

    public function addSalle()
    {
        //ajout Salle
    }

    public function updateSalle()
    {
        //MAJ Salle
    }

    public function deleteSalle()
    {
        //supprimer Salle
    }



}