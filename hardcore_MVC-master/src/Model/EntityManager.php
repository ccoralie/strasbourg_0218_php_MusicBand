<?php
/**
 * Created by PhpStorm.
 * User: sylvain
 * Date: 07/03/18
 * Time: 20:52
 */

namespace Model;


abstract class EntityManager
{
    protected $conn; //variable de connexion
    protected $table;

   public function __construct($table)
    {
        $db = new Connection();
        $this->conn = $db->getPdo();
        $this->table = $table;
    }

     /**
     * @return array
     */
    public function findAll()
    {
        return $this->conn->query('SELECT * FROM ' . $this->table, \PDO::FETCH_ASSOC)->fetchAll();
    }

    /**
     * @param $id
     * @return array
     */
    public function findOneById(int $id)
    {
        // prepared request
        $statement = $this->conn->prepare("SELECT * FROM $this->table WHERE id=:id");
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->execute();

        return $statement->fetch(\PDO::FETCH_ASSOC);
    }

    /**
     *
     */
    public function delete($id)
    {
        //TODO : Implements SQL DELETE request

        // prepared request
        $statement = $this->conn->prepare("DELETE * FROM $this->table WHERE id=:id");
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->execute();

        return $statement->fetch(\PDO::FETCH_ASSOC);
    }

    /**
     *
     */
    public function insert($data)
    {
        //TODO : Implements SQL INSERT request
        // prepared request


        $statement = $this->conn->prepare("INSERT INTO $this->table (name, data) VALUES (:name, :data)");
        $statement->bindParam(':name', $name);
        $statement->bindParam(':data', $data);
        $statement->execute();

        return $statement->fetch(\PDO::FETCH_ASSOC);

    }


    /**
     *
     */
    public function update($id, $data)
    {
        //TODO : Implements SQL UPDATE request

        $statement = $this->conn->prepare("UPDATE $this->table SET data = :data WHERE id= :id ");
        $statement->bindParam(':data', $data);
        $statement->bindParam(':id', $id);
        $statement->execute();

        return $statement->fetch(\PDO::FETCH_ASSOC);
    }


}
