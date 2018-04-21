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
        session_start();
        if ((isset($_SESSION['user'])) && (!empty($_SESSION['user'])) && (isset($_SESSION['pwd'])) && (!empty($_SESSION['pwd']))){
            return $this->twig->render('Admin/adminPage.html.twig');
        }else{
        return $this->twig->render('Admin/index.html.twig');
        }
    }

    public function adminPage()
    {
        session_start();
        $vipUser="Franck-O";
        $vipPwd="Wilder4life";
        if (($_SERVER['REQUEST_METHOD']==='POST') && (isset($_POST['user'])) && (isset($_POST['pwd']))) {

            if ((isset($_POST["user"])) && (($_POST["user"]) == $vipUser) && (isset($_POST["pwd"])) && (($_POST["pwd"]) == $vipPwd)) {
                $_SESSION['user'] = $_POST['user'];
                $_SESSION['pwd'] = $_POST['pwd'];
                return $this->twig->render('Admin/adminPage.html.twig');
            } else
                $Error = "Veuillez entrer un couple nom d'utilisateur et mot de passe valide";
            return $this->twig->render('Admin/index.html.twig', ['Error'=>$Error]);
            return $this->twig->render('Admin/index.html.twig');
        }
    }




}

