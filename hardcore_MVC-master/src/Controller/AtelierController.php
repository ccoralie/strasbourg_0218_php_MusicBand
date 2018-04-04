<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 11/10/17
 * Time: 16:07
 */

namespace Controller;



/**
 * Class ItemController
 * @package Controller
 */
class ItemController extends AbstractController
{
  public function hello()
  {
    return $this->twig->render('Atelier/hello.html.twig', ['nom' => 'Coralie']);
  }

}
