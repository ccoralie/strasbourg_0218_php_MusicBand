<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 11/10/17
 * Time: 16:07
 */

namespace Controller;

use Model\CategorieManager;
use Model\GoodiesManager;
use Model\WorldtourManager;
use Model\GalerieManager;
use Model\ArticleManager;
use Model\CarouselManager;
use Model\Item;
use Model\ItemManager;
use Model\AlbumManager;
use Model\ChansonManager;
use Model\NewsletterManager;

/**
 * Class ItemController
 * @package Controller
 */
class ItemController extends AbstractController
{

    /**
     * @return string
     */
    public function index()
    {
        $itemManager = new ItemManager();
        $items = $itemManager->findAll();

        return $this->twig->render('Item/index.html.twig', ['items' => $items]);
    }

    /**
     * @param $id
     * @return string
     */
    public function show(int $id)
    {
        $itemManager = new ItemManager();
        $item = $itemManager->findOneById($id);

        return $this->twig->render('Item/show.html.twig', ['item' => $item]);
    }

    /**
     * @param $id
     * @return string
     */
    public function edit(int $id)
    {
        // TODO : edit item with id $id
        return $this->twig->render('Item/edit.html.twig', ['item', $id]);
    }

    /**
     * @param $id
     * @return string
     */
    public function add()
    {
        // TODO : add a new item


        return $this->twig->render('Item/add.html.twig');
    }

    /**
     * @param $id
     * @return string
     */
    public function delete(int $id)
    {
        // TODO : delete the item with id $id
        return $this->twig->render('Item/index.html.twig');
    }

    /**
     * @return string
     */

    public function Newsletter()
    {
        return $this->twig->render('Pages/fanClub.html.twig');
    }

    Public function addSubscriber()
    {
        if (isset($_POST['nom']) && isset($_POST['mail'])){
            $nom=$_POST['nom'];
            $mail=$_POST['mail'];

            $addSubscriber = new NewsletterManager();
            $addSubscriber->add($nom,$mail);
            header('location: /Newsletter');
        }else{
            header('location: /Newsletter');
        }

    }

    /**
     * @return string
     */

    public function Accueil()
    {
        $carouselManager = new CarouselManager();
        $carousel = $carouselManager->findAll();

        $articleManager = new ArticleManager();
        $article = $articleManager->findAll();


        return $this->twig->render('Pages/accueil.html.twig', ['carousel' => $carousel , 'article' => $article]);
    }

    public function accueilShow(int $id)
    {
        $articleManager = new ArticleManager();
        $article = $articleManager->findOneById($id);

        return $this->twig->render('Page/accueil.html.twig', ['article' => $article]);
    }

    /**
     * @return string
     */

    public function Discographie()
    {
        $AlbumManager = new AlbumManager();
        $Album = $AlbumManager->findAll();
        $ChansonManager = new ChansonManager();
        $Chanson = $ChansonManager->findAll();
        return $this->twig->render('Pages/discographie.html.twig', ['Album'=>$Album, 'Chanson'=>$Chanson]);
    }



    /**
     * @return string
     */

    public function Goodies()
    {
        return $this->twig->render('Pages/goodies.html.twig');
    }

    public function menuGoodies()
    {
        $CategorieManager = new CategorieManager();
        $menuGoodies = $CategorieManager->getTypeCategorie();
        return $this->twig->render('Pages/goodies.html.twig', ['menuGoodies' => $menuGoodies]);
    }

    public function affichageParGoodiesCategorie($GetId)
    {
        $GoodiesManager = new GoodiesManager();
        $affichageParGoodiesCategorie = $GoodiesManager->GoodiesParCategorie($GetId);

        $CategorieManager = new CategorieManager();
        $menuGoodies = $CategorieManager->getTypeCategorie();
        return $this->twig->render('Pages/goodies.html.twig', ['affichageParGoodiesCategorie' => $affichageParGoodiesCategorie, 'menuGoodies' => $menuGoodies]);
    }

    /**
     * @return string
     */

    public function Worldtour()
    {

        $worldtourManager = new WorldtourManager();
        $worldtour= $worldtourManager->findAll();
        return $this->twig->render('Pages/worldtour.html.twig', ['worldtour' => $worldtour]);
    }

    /**
     * @return string
     */

    public function Galerie()
    {
        $galerieManager = new GalerieManager();
        $galerie = $galerieManager->findAll();


        return $this->twig->render('Pages/galerie.html.twig', ['galerie' => $galerie]);
    }
    
    



}
