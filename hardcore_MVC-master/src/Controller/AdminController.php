<?php




namespace Controller;
use Model\ArticleManager;
use Model\CategorieManager;
use Model\GalerieManager;
use Model\Goodies;
use Model\WorldtourManager;
use Model\GoodiesManager;

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

    public function deleteGalerie()
    {
        $deleteGalerie = new GalerieManager();
        $fullGallerie = $deleteGalerie->findAll();

        foreach ($fullGallerie as $value) {
            if (isset($_POST[$value['id']])) {
                $id = $_POST['id'];

                $deleteGalerie->delete($id);

                $galerieManager = new GalerieManager();
                $galerie = $galerieManager->findAll();

                return $this->twig->render('Admin/adminGalerie.html.twig', ['galerie' => $galerie]);
            } else {
            }
        }
        return $this->twig->render('Admin/adminGalerie.html.twig');
    }

    public function uploadGalerie()
    {
        $allowed_files = array(
            "image/gif",
            "image/pjpeg",
            "image/jpeg",
            "image/png");

        if (isset($_POST['submit_envoyer'])){
            $i=0;
            foreach ($_FILES['fichier']['size'] as $value){
                if (!in_array($_FILES['fichier']['type'][$i], $allowed_files))
                    die ('type mime incorrect');
                if ($value<=2000000) {
                    // chemin vers un dossier sur le serveur qui va recevoir les fichiers uploadés
                    $uploadDir = 'assets/images/Galerie/';
                    // on récupère l'extension, par exemple "pdf"
                    $extension = pathinfo($_FILES['fichier']['name'][$i], PATHINFO_EXTENSION);
                    // on concatène le nom de fichier unique avec l'extension récupérée
                    $photo =uniqid($uploadDir.'img_') . '.' .$extension;
                    // on déplace le fichier temporaire vers le nouvel emplacement sur le serveur. Ca y est, le fichier est uploadé
                    move_uploaded_file($_FILES['fichier']['tmp_name'][$i], $photo);

                    $uploadGalerie = new GalerieManager();
                    $uploadGalerie->add($photo);
                    $galerieManager = new GalerieManager();
                    $galerie = $galerieManager->findAll();

                    return $this->twig->render('Admin/adminGalerie.html.twig',['galerie' => $galerie]);

                }
                else {
                      }
                $i++;
            }
            $Error = "le fichier excède 2Mo";
            return $this->twig->render('Admin/adminGalerie.html.twig', ['Error' => $Error]);
        }
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

    public function deleteWorldtour()
    {
        $deleteWorldtour = new WorldtourManager();
        $fullWorldtour = $deleteWorldtour->findAll();
        foreach ($fullWorldtour as $value) {
            if (isset($_POST[$value['id']])) {
                $id = $_POST['id'];
                $deleteWorldtour->delete($id);

                $worldtourManager = new WorldtourManager();
                $worldtour = $worldtourManager->findAll();

                return $this->twig->render('Admin/adminWorldtour.html.twig', ['worldtour' => $worldtour]);
            } else {
            }
        }
        return $this->twig->render('Admin/adminWorldtour.html.twig');
    }

    Public function updateArticle()
    {
        $updateArticle = new ArticleManager();
        $articles=$updateArticle->findAll();



        foreach($articles as $entity){
            if (isset($_POST[$entity['id']]))
            {
                $id = $_POST['id'];
                $titre = $_POST['titre'];
                $article = $_POST['article'];


                $updateArticle->update($id, $titre, $article);
                $articleManager = new ArticleManager();
                $article = $articleManager->findAll();

                return $this->twig->render('Admin/adminArticle.html.twig', ['article' => $article]);
            } else {
            }
        }
        return $this->twig->render('Admin/adminArticle.html.twig');

    }





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
        $GoodiesManager = new GoodiesManager();
        $goodies=$GoodiesManager->findAll();
        $categorieManager= new CategorieManager();
        $categorie=$categorieManager->findAll();
        return $this->twig->render('Admin/adminGoodies.html.twig', ['categorie' => $categorie, 'goodies' => $goodies]);
    }

    public function addGoodies()
    {

            if (isset($_POST['categorie_id'])) {
                $categorie_id = $_POST['categorie_id'];

                $reference = $_POST['reference'];
                $prix = $_POST['prix'];
                $stock = $_POST['stock'];

                $allowed_files = array(
                    "image/gif",
                    "image/pjpeg",
                    "image/jpeg",
                    "image/png");

                if (isset($_POST['submit_envoyer'])) {
                    $i = 0;
                    foreach ($_FILES['fichier']['size'] as $value) {
                        if (!in_array($_FILES['fichier']['type'][$i], $allowed_files))
                            die ('type mime incorrect');
                        if ($value <= 2000000) {
                            $goodiesManager = new GoodiesManager();
                            $id=$categorie_id;
                            $cheminTableau = $goodiesManager->getChemin($id);
                            $chemin=implode($cheminTableau);
                            // chemin vers un dossier sur le serveur qui va recevoir les fichiers uploadés
                            $uploadDir = "assets/images/goodies/".$chemin."/";
                            // on récupère l'extension, par exemple "pdf"
                            $extension = pathinfo($_FILES['fichier']['name'][$i], PATHINFO_EXTENSION);
                            // on concatène le nom de fichier unique avec l'extension récupérée
                            $pgoodies = uniqid($uploadDir . 'img_') . '.' . $extension;
                            // on déplace le fichier temporaire vers le nouvel emplacement sur le serveur. Ca y est, le fichier est uploadé
                            move_uploaded_file($_FILES['fichier']['tmp_name'][$i], $pgoodies);
                            $goodies='/'.$pgoodies;


                            $addGoodies = new GoodiesManager();
                            $addGoodies->addGoodies($categorie_id, $goodies, $reference, $prix, $stock);

                            $categorieManager = new CategorieManager();
                            $categorie = $categorieManager->findAll();
                            return $this->twig->render('Admin/adminGoodies.html.twig', ['categorie' => $categorie]);
                        }
                        $i++;
                    }
                    $categorieManager = new CategorieManager();
                    $categorie = $categorieManager->findAll();
                    return $this->twig->render('Admin/adminGoodies.html.twig', ['categorie' => $categorie]);
                }
            }
    }

      public function menuAdminGoodies()
      {
          $CategorieManager = new CategorieManager();
          $menuAdminGoodies = $CategorieManager->getTypeCategorie();
          return $this->twig->render('Admin/adminGoodies.html.twig', ['menuAdminGoodies' => $menuAdminGoodies]);
      }


      public function affichageParGoodiesCategorie($GetId)
      {
          $GoodiesManager = new GoodiesManager();
          $affichageParGoodiesCategorie = $GoodiesManager->GoodiesParCategorie($GetId);

          $CategorieManager = new CategorieManager();
          $menuAdminGoodies = $CategorieManager->getTypeCategorie();
          return $this->twig->render('Admin/adminGoodies.html.twig', ['affichageParGoodiesCategorie' => $affichageParGoodiesCategorie, 'menuAdminGoodies' => $menuAdminGoodies]);

      }

      public function deleteGoodies(){

          $deleteGoodies = new GoodiesManager();
          $deleteGoodies->findAll();


              if (isset($_POST['id'])) {
                  $id = $_POST['id'];

                  $deleteGoodies->deleteById($id);

                  $goodiesManager = new GoodiesManager();
                  $goodies = $goodiesManager->findAll();

                  $CategorieManager = new CategorieManager();
                  $menuAdminGoodies = $CategorieManager->getTypeCategorie();


                  return $this->twig->render('Admin/adminGoodies.html.twig', ['goodies' => $goodies,'menuAdminGoodies' => $menuAdminGoodies]);
              }

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








