<?php
/**
 * Created by PhpStorm.
 * User: sylvain
 * Date: 07/03/18
 * Time: 18:20
 */

namespace Model;


class WorldtourManager extends EntityManager
{

    const TABLE = 'Worldtour';


    public function __construct()
    {
        parent::__construct(self::TABLE);
    }

    public function add($dateconcert,$ville,$salle)
    {

        $statement = $this->conn->prepare("INSERT INTO $this->table (dateconcert,ville, salle) VALUES (:dateconcert, :ville, :salle)");
        $statement->bindValue(':dateconcert', $dateconcert);
        $statement->bindValue(':ville', $ville);
        $statement->bindValue(':salle', $salle);
        $statement->execute();


    }

    public function delete($id)
    {
        //TODO : Implements SQL DELETE request

        // prepared request
        $statement = $this->conn->prepare("DELETE * FROM $this->table WHERE id=:id");
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->execute();

        return $statement->fetch(\PDO::FETCH_ASSOC);

    }
}