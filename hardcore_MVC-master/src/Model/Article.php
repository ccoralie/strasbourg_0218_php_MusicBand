<?php

namespace Model;

class Article
{
    private $id;
    private $article;
    private $titre;

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param mixed $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     * @return mixed
     */
    public function getArticle()
    {
        return $this->article;
    }

    /**
     * @param mixed $article
     */
    public function setArticle($article)
    {
        $this->article = $article;
    }


    public function addArticle()
    {
        //ajouter des articles

    }

    public function updateArticle()
    {
        //mettre à jour des articles
    }

    /*public function deleteArticle()
    {
        //supprimer un article
    }*/

    /**
     * @return mixed
     */
    public function getTitre()
    {
        return $this->titre;
    }

    /**
     * @param mixed $titre
     */
    public function setTitre($titre)
    {
        $this->titre = $titre;
    }

    public function addTitre()
    {
        //ajouter un titre
    }


    public function updateTitre()
    {
        //MAJ titre
    }

    public function deleteTitre()
    {
        //supprimer un titre
    }

}