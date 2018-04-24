<?php

namespace Model;

class Admin
{
    private $id;
    private $vipUser;
    private $vipPwd;


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
    public function getvipUser()
    {
        return $this->vipUser;
    }

    /**
     * @param mixed $vipUser
     */
    public function setvipUser($vipUser)
    {
        $this->vipUser = $vipUser;
    }



    /**
     * @return mixed
     */
    public function getvipPwd()
    {
        return $this->vipPwd;
    }

    /**
     * @param mixed $vipPwd
     */
    public function setvipPwd($vipPwd)
    {
        $this->vipPwd = $vipPwd;
    }
}