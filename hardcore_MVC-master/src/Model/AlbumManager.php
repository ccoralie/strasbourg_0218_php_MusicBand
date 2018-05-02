<?php
/**
 * Created by PhpStorm.
 * User: sylvain
 * Date: 07/03/18
 * Time: 18:20
 */

namespace Model;


class AlbumManager extends EntityManager
{
    const TABLE = 'Album';


    public function __construct()
    {
        parent::__construct(self::TABLE);
    }


    public function add($pochetteAlbum)
    {

        $statement = $this->conn->prepare("INSERT INTO $this->table (pochetteAlbum) VALUES (:pochetteAlbum)");
        $statement->bindValue(':pochetteAlbum', $pochetteAlbum);
        $statement->execute();

    }
}

