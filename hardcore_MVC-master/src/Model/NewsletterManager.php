<?php
/**
 * Created by PhpStorm.
 * User: sylvain
 * Date: 07/03/18
 * Time: 18:20
 */

namespace Model;


class NewsletterManager extends EntityManager
{

    const TABLE = 'Newsletter';


    public function __construct()
    {
        parent::__construct(self::TABLE);
    }

    public function add($nom,$mail)
    {

        $statement = $this->conn->prepare("INSERT INTO $this->table (nom,mail) VALUES (:nom, :mail)");
        $statement->bindValue(':nom', $nom);
        $statement->bindValue(':mail', $mail);
        $statement->execute();


    }


}