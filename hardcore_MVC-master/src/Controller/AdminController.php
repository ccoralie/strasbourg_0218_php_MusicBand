<?php

namespace Controller;

/**
 * Created by PhpStorm.
 * User: root
 * Date: 11/10/17
 * Time: 15:38
 */
class AdminController extends AbstractController
{
    public function index()
    {
        return $this->twig->render('Admin/index.html.twig');
    }

    public function loginAdmin()
    {
        return $this->twig->render('Admin/loginAdmin.html.twig');
    }


    public function admin()
    {

        if (isset($_POST["contenu"])){
            if (isset($_POST["file"])){
                $Fichier = "../src/View/Pages/".$_POST["file"];
                $File=fopen($Fichier,"w");
                fwrite($File,$_POST["contenu"]);
                fclose($File);
            }
        }
        $path = opendir('../src/View/Pages/');
        while($name = readdir($path)){
if (in_array($name, array("accueil.html.twig","galerie.html.twig"))){
                echo '<a href="?f=' . $name . '">';
                echo $name.' - ';
                echo '</a>';
            }
        }
        if (isset($_GET["f"])){
            $Fichier = "../src/View/Pages/".$_GET["f"];
            $Contenu = file_get_contents($Fichier);
            return $this->twig->render('Admin/admin.html.twig', ['Contenu'=>$Contenu], ['Fichier'=>$Fichier]);
        }
        return $this->twig->render('Admin/admin.html.twig');
    }
}

