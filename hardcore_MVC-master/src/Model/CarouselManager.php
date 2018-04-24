<?php
/**
 * Created by PhpStorm.
 * User: coralie
 * Date: 21/04/18
 * Time: 08:57
 */

namespace Model;


class CarouselManager extends EntityManager
{
    const TABLE = 'Carousel';


    public function __construct()
    {
        parent::__construct(self::TABLE);
    }

}