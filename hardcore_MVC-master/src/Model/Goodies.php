<?php

namespace Model;

class Goodies
{
    private $id;
    private $goodies;
    private $prix;
    private $reference;

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
    public function getGoodies()
    {
        return $this->goodies;
    }

    /**
     * @param mixed $goodies
     */
    public function setGoodies($goodies)
    {
        $this->goodies = $goodies;
    }

    public function addGoodies()
    {
        // ajout goodies
    }

    public function updateGoodies()
    {
        //MAJ goodies
    }

    public function deleteGoodies()
    {
        //Supprimer goodies
    }

    /**
     * @return mixed
     */
    public function getPrix()
    {
        return $this->prix;
    }

    /**
     * @param mixed $prix
     */
    public function setPrix($prix)
    {
        $this->prix = $prix;
    }

    public function addPrix()
    {
        //ajout prix
    }

    public function updatePrix()
    {
        //MAJ prix
    }

    public function deletePrix()
    {
        //supprimer prix
    }

    /**
     * @return mixed
     */
    public function getReference()
    {
        return $this->reference;
    }

    /**
     * @param mixed $reference
     */
    public function setReference($reference)
    {
        $this->reference = $reference;
    }

    public function addReference()
    {
        //ajout reference
    }

    public function updateReference()
    {
        //MAJ reference
    }

    public function deleteReference()
    {
        //supprimer reference
    }
}