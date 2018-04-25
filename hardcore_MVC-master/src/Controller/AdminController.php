<?php




namespace Controller;
use Model\ArticleManager;
use Model\GalerieManager;
use Model\WorldtourManager;

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
        if ((isset($_SESSION['user'])) && (!empty($_SESSION['user'])) && (isset($_SESSION['pwd'])) && (!empty($_SESSION['pwd']))) {
            return $this->twig->render('Admin/adminPage.html.twig');
        } else {
            return $this->twig->render('Admin/index.html.twig');
        }
    }

    public function adminPage()
    {
        session_start();
        $vipUser = "Franck-O";
        $vipPwd = "Wilder4life";
        if (($_SERVER['REQUEST_METHOD'] === 'POST') && (isset($_POST['user'])) && (isset($_POST['pwd']))) {

            if ((isset($_POST["user"])) && (($_POST["user"]) == $vipUser) && (isset($_POST["pwd"])) && (($_POST["pwd"]) == $vipPwd)) {
                $_SESSION['user'] = $_POST['user'];
                $_SESSION['pwd'] = $_POST['pwd'];
                $nameReturn= $_SESSION['user'];
                return $this->twig->render('Admin/adminPage.html.twig', ['nameReturn' => $nameReturn]);
            } else
                $Error = "Veuillez entrer un couple nom d'utilisateur et mot de passe valide";
            return $this->twig->render('Admin/index.html.twig', ['Error' => $Error]);
        }
    }



    /**
     * @return string
     * @throws \Twig_Error_Loader
     * @throws \Twig_Error_Runtime
     * @throws \Twig_Error_Syntax
     */
    public function adminGalerie()
    {

        /** @var TYPE_NAME $galerieManager */

        $galerieManager = new GalerieManager();
        $galerie = $galerieManager->findAll();



        return $this->twig->render('Admin/adminGalerie.html.twig', ['galerie' => $galerie]);
    }




    public function adminDiscographie()
    {
        return $this->twig->render('Admin/adminDiscographie.html.twig');
    }

    /**
     * @return string
     * @throws \Twig_Error_Loader
     * @throws \Twig_Error_Runtime
     * @throws \Twig_Error_Syntax
     */
    public function adminWorldtour()
    {

        /** @var TYPE_NAME $worldtourManager */
        $worldtourManager = new WorldtourManager();
        $worldtour= $worldtourManager->findAll();



        return $this->twig->render('Admin/adminWorldtour.html.twig',['worldtour' => $worldtour]);
    }

    /**
     *
     */
    Public function addWorldtour()
    {
        $dateconcert = $_POST['dateconcert'];
        $ville = $_POST['ville'];
        $salle = $_POST['salle'];

        if (isset($_POST['dateconcert']) && isset($_POST['ville']) && isset($_POST['salle']) && !empty($_POST['dateconcert']) && !empty($_POST['ville']) && !empty($_POST['salle'])) {


            $addWorldtour = new WorldtourManager();
            $addWorldtour->add($dateconcert, $ville, $salle);


            header('Location: /adminWorldtour');
        }else{
            header('Location: /adminWorldtour');
        }


    }

    /**
     * @param $id
     */
   /* public function deleteWorldtour($id)
{
    if (isset($_POST['select']) && !empty($_POST['select']))
    {
        $deleteWorldtour = new WorldtourManager();
        $deleteWorldtour->delete($id);

        header('location: /adminWorldtour');
    }else{
        header('location: /adminWorldtour');
    }
}*/



    /**
     * @return string
     * @throws \Twig_Error_Loader
     * @throws \Twig_Error_Runtime
     * @throws \Twig_Error_Syntax
     */
    public function adminArticle()
    {

        /** @var TYPE_NAME $articleManager */
        $articleManager = new ArticleManager();
        $article = $articleManager->findAll();

        return $this->twig->render('Admin/adminArticle.html.twig', ['article' => $article]);

    }

    public function adminFanclub()
    {
        return $this->twig->render('Admin/adminFanclub.html.twig');
    }

    public function adminGoodies()
    {
        return $this->twig->render('Admin/adminGoodies.html.twig');
    }



    public function logoutAdmin()
    {
        session_start();
        session_unset();
        session_destroy();
        return $this->twig->render('Admin/index.html.twig');
    }


}
    /**
     * @return string
     * @throws \Twig_Error_Loader
     * @throws \Twig_Error_Runtime
     * @throws \Twig_Error_Syntax
     */








