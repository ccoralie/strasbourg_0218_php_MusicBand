<?php
/**
 * Created by PhpStorm.
 * User: sylvain
 * Date: 07/03/18
 * Time: 18:20
 */

namespace Model;


class ArticleManager extends EntityManager
{
    const TABLE = 'Article';


    public function __construct()
    {
        parent::__construct(self::TABLE);
    }

    public function update($id,$titre,$article)
    {
        $statement = $this->conn->prepare("UPDATE $this->table SET titre=:titre, article=:article WHERE id=:id");
        $statement->bindValue(':id', $id);
        $statement->bindValue(':titre', $titre);
        $statement->bindValue(':article', $article);
        return $statement->execute();
    }


}