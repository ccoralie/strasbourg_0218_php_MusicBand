<?php
/**
 * Created by PhpStorm.
 * User: sylvain
 * Date: 07/03/18
 * Time: 18:20
 */

namespace Model;


class ChansonManager extends EntityManager
{
    const TABLE = 'Chanson';


    public function __construct()
    {
        parent::__construct(self::TABLE);
    }

    public function songAffichage($chanson){
        $statement = $this->conn->prepare("SELECT Chanson.chanson FROM $this->table LEFT JOIN Album ON Chanson.album_id=Album.id");
        $statement->bindValue('chanson', $chanson, \PDO::PARAM_INT);
        $statement->execute();

        return $statement->fetch(\PDO::FETCH_ASSOC);
    }
}