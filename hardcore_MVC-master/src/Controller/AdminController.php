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
        if (($_SERVER['REQUEST_METHOD']==='POST') && (isset($_POST['user'])) && (isset($_POST['pwd']))){
            $_SESSION['user'] = $_POST['user'];
            $_SESSION['pwd'] = $_POST['pwd'];
            return $this->twig->render('Admin/adminPage.html.twig');
        }

       // header('/login');
    }




}

