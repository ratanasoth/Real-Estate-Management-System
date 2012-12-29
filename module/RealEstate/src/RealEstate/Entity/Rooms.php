<?php

namespace RealEstate\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Rooms
 *
 * @ORM\Table(name="rooms")
 * @ORM\Entity
 */
class Rooms
{
    /**
     * @var integer
     *
     * @ORM\Column(name="uid", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $uid;

    /**
     * @var integer
     *
     * @ORM\Column(name="pid", type="integer", nullable=false)
     */
    private $pid;

    /**
     * @var boolean
     *
     * @ORM\Column(name="hidden", type="boolean", nullable=false)
     */
    private $hidden;

    /**
     * @var boolean
     *
     * @ORM\Column(name="disabled", type="boolean", nullable=false)
     */
    private $disabled;

    /**
     * @var boolean
     *
     * @ORM\Column(name="deleted", type="boolean", nullable=false)
     */
    private $deleted;

    /**
     * @var integer
     *
     * @ORM\Column(name="createdTime", type="integer", nullable=false)
     */
    private $createdtime;

    /**
     * @var integer
     *
     * @ORM\Column(name="createdUserUid", type="integer", nullable=false)
     */
    private $createduseruid;

    /**
     * @var integer
     *
     * @ORM\Column(name="lastModifiedTime", type="integer", nullable=false)
     */
    private $lastmodifiedtime;

    /**
     * @var integer
     *
     * @ORM\Column(name="lastModifiedUserUid", type="integer", nullable=false)
     */
    private $lastmodifieduseruid;

    /**
     * @var integer
     *
     * @ORM\Column(name="validTimeStart", type="integer", nullable=false)
     */
    private $validtimestart;

    /**
     * @var integer
     *
     * @ORM\Column(name="validTimeEnd", type="integer", nullable=false)
     */
    private $validtimeend;

    /**
     * @var integer
     *
     * @ORM\Column(name="roomNumber", type="integer", nullable=false)
     */
    private $roomnumber;

    /**
     * @var integer
     *
     * @ORM\Column(name="cost", type="integer", nullable=false)
     */
    private $cost;

    /**
     * @var boolean
     *
     * @ORM\Column(name="toilet", type="boolean", nullable=false)
     */
    private $toilet;

    /**
     * @var boolean
     *
     * @ORM\Column(name="kitchen", type="boolean", nullable=false)
     */
    private $kitchen;

    /**
     * @var boolean
     *
     * @ORM\Column(name="available", type="boolean", nullable=false)
     */
    private $available;

    /**
     * @var integer
     *
     * @ORM\Column(name="sizeUid", type="integer", nullable=false)
     */
    private $sizeuid;

    /**
     * @var integer
     *
     * @ORM\Column(name="houseUid", type="integer", nullable=false)
     */
    private $houseuid;



    /**
     * Get uid
     *
     * @return integer 
     */
    public function getUid()
    {
        return $this->uid;
    }

    /**
     * Set pid
     *
     * @param integer $pid
     * @return Rooms
     */
    public function setPid($pid)
    {
        $this->pid = $pid;
    
        return $this;
    }

    /**
     * Get pid
     *
     * @return integer 
     */
    public function getPid()
    {
        return $this->pid;
    }

    /**
     * Set hidden
     *
     * @param boolean $hidden
     * @return Rooms
     */
    public function setHidden($hidden)
    {
        $this->hidden = $hidden;
    
        return $this;
    }

    /**
     * Get hidden
     *
     * @return boolean 
     */
    public function getHidden()
    {
        return $this->hidden;
    }

    /**
     * Set disabled
     *
     * @param boolean $disabled
     * @return Rooms
     */
    public function setDisabled($disabled)
    {
        $this->disabled = $disabled;
    
        return $this;
    }

    /**
     * Get disabled
     *
     * @return boolean 
     */
    public function getDisabled()
    {
        return $this->disabled;
    }

    /**
     * Set deleted
     *
     * @param boolean $deleted
     * @return Rooms
     */
    public function setDeleted($deleted)
    {
        $this->deleted = $deleted;
    
        return $this;
    }

    /**
     * Get deleted
     *
     * @return boolean 
     */
    public function getDeleted()
    {
        return $this->deleted;
    }

    /**
     * Set createdtime
     *
     * @param integer $createdtime
     * @return Rooms
     */
    public function setCreatedtime($createdtime)
    {
        $this->createdtime = $createdtime;
    
        return $this;
    }

    /**
     * Get createdtime
     *
     * @return integer 
     */
    public function getCreatedtime()
    {
        return $this->createdtime;
    }

    /**
     * Set createduseruid
     *
     * @param integer $createduseruid
     * @return Rooms
     */
    public function setCreateduseruid($createduseruid)
    {
        $this->createduseruid = $createduseruid;
    
        return $this;
    }

    /**
     * Get createduseruid
     *
     * @return integer 
     */
    public function getCreateduseruid()
    {
        return $this->createduseruid;
    }

    /**
     * Set lastmodifiedtime
     *
     * @param integer $lastmodifiedtime
     * @return Rooms
     */
    public function setLastmodifiedtime($lastmodifiedtime)
    {
        $this->lastmodifiedtime = $lastmodifiedtime;
    
        return $this;
    }

    /**
     * Get lastmodifiedtime
     *
     * @return integer 
     */
    public function getLastmodifiedtime()
    {
        return $this->lastmodifiedtime;
    }

    /**
     * Set lastmodifieduseruid
     *
     * @param integer $lastmodifieduseruid
     * @return Rooms
     */
    public function setLastmodifieduseruid($lastmodifieduseruid)
    {
        $this->lastmodifieduseruid = $lastmodifieduseruid;
    
        return $this;
    }

    /**
     * Get lastmodifieduseruid
     *
     * @return integer 
     */
    public function getLastmodifieduseruid()
    {
        return $this->lastmodifieduseruid;
    }

    /**
     * Set validtimestart
     *
     * @param integer $validtimestart
     * @return Rooms
     */
    public function setValidtimestart($validtimestart)
    {
        $this->validtimestart = $validtimestart;
    
        return $this;
    }

    /**
     * Get validtimestart
     *
     * @return integer 
     */
    public function getValidtimestart()
    {
        return $this->validtimestart;
    }

    /**
     * Set validtimeend
     *
     * @param integer $validtimeend
     * @return Rooms
     */
    public function setValidtimeend($validtimeend)
    {
        $this->validtimeend = $validtimeend;
    
        return $this;
    }

    /**
     * Get validtimeend
     *
     * @return integer 
     */
    public function getValidtimeend()
    {
        return $this->validtimeend;
    }

    /**
     * Set roomnumber
     *
     * @param integer $roomnumber
     * @return Rooms
     */
    public function setRoomnumber($roomnumber)
    {
        $this->roomnumber = $roomnumber;
    
        return $this;
    }

    /**
     * Get roomnumber
     *
     * @return integer 
     */
    public function getRoomnumber()
    {
        return $this->roomnumber;
    }

    /**
     * Set cost
     *
     * @param integer $cost
     * @return Rooms
     */
    public function setCost($cost)
    {
        $this->cost = $cost;
    
        return $this;
    }

    /**
     * Get cost
     *
     * @return integer 
     */
    public function getCost()
    {
        return $this->cost;
    }

    /**
     * Set toilet
     *
     * @param boolean $toilet
     * @return Rooms
     */
    public function setToilet($toilet)
    {
        $this->toilet = $toilet;
    
        return $this;
    }

    /**
     * Get toilet
     *
     * @return boolean 
     */
    public function getToilet()
    {
        return $this->toilet;
    }

    /**
     * Set kitchen
     *
     * @param boolean $kitchen
     * @return Rooms
     */
    public function setKitchen($kitchen)
    {
        $this->kitchen = $kitchen;
    
        return $this;
    }

    /**
     * Get kitchen
     *
     * @return boolean 
     */
    public function getKitchen()
    {
        return $this->kitchen;
    }

    /**
     * Set available
     *
     * @param boolean $available
     * @return Rooms
     */
    public function setAvailable($available)
    {
        $this->available = $available;
    
        return $this;
    }

    /**
     * Get available
     *
     * @return boolean 
     */
    public function getAvailable()
    {
        return $this->available;
    }

    /**
     * Set sizeuid
     *
     * @param integer $sizeuid
     * @return Rooms
     */
    public function setSizeuid($sizeuid)
    {
        $this->sizeuid = $sizeuid;
    
        return $this;
    }

    /**
     * Get sizeuid
     *
     * @return integer 
     */
    public function getSizeuid()
    {
        return $this->sizeuid;
    }

    /**
     * Set houseuid
     *
     * @param integer $houseuid
     * @return Rooms
     */
    public function setHouseuid($houseuid)
    {
        $this->houseuid = $houseuid;
    
        return $this;
    }

    /**
     * Get houseuid
     *
     * @return integer 
     */
    public function getHouseuid()
    {
        return $this->houseuid;
    }
}