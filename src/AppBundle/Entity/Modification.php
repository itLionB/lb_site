<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Modification
 *
 * @ORM\Table(name="modification")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\ModificationRepository")
 */
class Modification
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var int
     *
     * @ORM\Column(name="userId", type="string", length=255, nullable=true)
     */
    private $userId;

    /**
     * @var int
     *
     * @ORM\Column(name="installation_id", type="integer",)
     */
    private $installationId;

    /**
     * @var string
     *
     * @ORM\Column(name="placeChanged", type="string", length=255)
     */
    private $placeChanged;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="modificationDate", type="datetime")
     */
    private $modificationDate;


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set userId
     *
     * @param integer $userId
     *
     * @return Modification
     */
    public function setUserId($userId)
    {
        $this->userId = $userId;

        return $this;
    }

    /**
     * Get userId
     *
     * @return int
     */
    public function getUserId()
    {
        return $this->userId;
    }

    /**
     * Set placeChanged
     *
     * @param string $placeChanged
     *
     * @return Modification
     */
    public function setPlaceChanged($placeChanged)
    {
        $this->placeChanged = $placeChanged;

        return $this;
    }

    /**
     * Get placeChanged
     *
     * @return string
     */
    public function getPlaceChanged()
    {
        return $this->placeChanged;
    }

    /**
     * Set modificationDate
     *
     * @param \DateTime $modificationDate
     *
     * @return Modification
     */
    public function setModificationDate($modificationDate)
    {
        $this->modificationDate = $modificationDate;

        return $this;
    }

    /**
     * Get modificationDate
     *
     * @return \DateTime
     */
    public function getModificationDate()
    {
        return $this->modificationDate;
    }


    /**
     * Set installationId
     *
     * @param integer $installationId
     *
     * @return Modification
     */
    public function setInstallationId($installationId)
    {
        $this->installationId = $installationId;

        return $this;
    }

    /**
     * Get installationId
     *
     * @return integer
     */
    public function getInstallationId()
    {
        return $this->installationId;
    }
}
