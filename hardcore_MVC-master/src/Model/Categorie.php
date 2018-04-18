<?php

namespace Model;

class Categorie extends Goodies
{
    private $id;
    private $type;

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @return mixed
     */
    public function getType()
    {
        return $this->type;
    }

    /**
     * @param mixed $type
     */
    public function setType($type)
    {
        $this->type = $type;
    }

    public function addType()
    {
        //ajout type
    }

    public function updateType()
    {
        //MAJ type
    }

    public function deleteType()
    {
        //supprimer type
    }


}