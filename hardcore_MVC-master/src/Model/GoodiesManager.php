<?php
/**
 * Created by PhpStorm.
 * User: sylvain
 * Date: 07/03/18
 * Time: 18:20
 */

namespace Model;


class GoodiesManager extends EntityManager
{
    const TABLE = 'Goodies';


    public function __construct()
    {
        parent::__construct(self::TABLE);
    }


    public function GoodiesParCategorie($GetId)
    {
        $statement = $this->conn->prepare("SELECT * FROM $this->table WHERE categorie_id =$GetId");
        $statement->execute();
        return $statement->fetchAll(\PDO::FETCH_ASSOC);
    }

    public function addGoodies($categorie_id,$goodies,$reference,$prix,$stock)
    {
        $statement = $this->conn->prepare("INSERT INTO Goodies(goodies,reference,prix,stock, categorie_id) VALUES (:goodies,:reference,:prix,:stock,:categorie_id) ");
        $statement->bindValue(':categorie_id', $categorie_id);
        $statement->bindValue(':goodies', $goodies);
        $statement->bindValue(':reference', $reference);
        $statement->bindValue(':prix', $prix);
        $statement->bindValue(':stock', $stock);
        $statement->execute();
    }

    public function getChemin($id)
    {
        $statement = $this->conn->prepare("SELECT Categorie.type FROM Categorie WHERE id =:id");
        $statement->bindValue(':id', $id);
        $statement->execute();
        return $statement->fetch(\PDO::FETCH_ASSOC);

    }

    public function deleteById($id){
        $statement = $this->conn->prepare("DELETE FROM $this->table WHERE id=:id");
        $statement->bindValue(':id', $id);
        $statement->execute();
    }


}