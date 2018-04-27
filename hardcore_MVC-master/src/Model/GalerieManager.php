<?php
/**
 * Created by PhpStorm.
 * User: sylvain
 * Date: 07/03/18
 * Time: 18:20
 */

namespace Model;


class GalerieManager extends EntityManager
{

    const TABLE = 'Galerie';


    public function __construct()
    {
        parent::__construct(self::TABLE);
    }


    public function delete($id)
    {
        //TODO : Implements SQL DELETE request

        // prepared request
        $statement = $this->conn->prepare("DELETE FROM $this->table WHERE id=:id");
        $statement->bindValue(':id', $id);
        $statement->execute();
    }

    public function add($photo)
    {

        $statement = $this->conn->prepare("INSERT INTO $this->table (photo) VALUES (:photo)");
        $statement->bindValue(':photo', $photo);
        $statement->execute();


    }
}