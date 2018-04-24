<?php
/**
 * Created by PhpStorm.
 * User: sylvain
 * Date: 07/03/18
 * Time: 18:20
 */

namespace Model;


class CategorieManager extends EntityManager
{
    const TABLE = 'Categorie';


    public function __construct()
    {
        parent::__construct(self::TABLE);
    }

    public function categorie($type)
    {
        $statement = $this->conn->prepare("SELECT type FROM $this->table ORDER BY type ASC");
        $statement->bindValue('type', $type, \PDO::PARAM_INT);
        $statement->execute();

        return $statement->fetch(\PDO::FETCH_ASSOC);
    }

}