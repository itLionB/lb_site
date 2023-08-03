<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Layout
 *
 * @ORM\Table(name="layout")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\LayoutRepository")
 */
class Layout
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
     * @var string
     *
     * @ORM\Column(name="frontendText", type="text", nullable=true)
     */
    private $frontendText;

    /**
     * @var string
     *
     * @ORM\Column(name="frontendImage", type="string", length=255, nullable=true)
     */
    private $frontendImage;

    /**
     * @var string
     *
     * @ORM\Column(name="backendText", type="text", nullable=true)
     */
    private $backendText;

    /**
     * @var string
     *
     * @ORM\Column(name="backendImage", type="string", length=255, nullable=true)
     */
    private $backendImage;

    /**
     * @var string
     *
     * @ORM\Column(name="rightsideText", type="text", nullable=true)
     */
    private $rightsideText;

    /**
     * @var string
     *
     * @ORM\Column(name="rightsideImage", type="string", length=255, nullable=true)
     */
    private $rightsideImage;

    /**
     * @var string
     *
     * @ORM\Column(name="leftsideText", type="text", nullable=true)
     */
    private $leftsideText;

    /**
     * @var string
     *
     * @ORM\Column(name="leftsideImage", type="string", length=255, nullable=true)
     */
    private $leftsideImage;

    /**
     * @var string
     *
     * @ORM\Column(name="addedBy", type="string", length=255, nullable=true)
     */
    private $addedBy;

    /**
     * @var int
     *
     * @ORM\Column(name="installationId", type="integer", nullable=true)
     */
    private $installationId;


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
     * Set frontendText
     *
     * @param string $frontendText
     *
     * @return Layout
     */
    public function setFrontendText($frontendText)
    {
        $this->frontendText = $frontendText;

        return $this;
    }

    /**
     * Get frontendText
     *
     * @return string
     */
    public function getFrontendText()
    {
        return $this->frontendText;
    }

    /**
     * Set frontendImage
     *
     * @param string $frontendImage
     *
     * @return Layout
     */
    public function setFrontendImage($frontendImage)
    {
        $this->frontendImage = $frontendImage;

        return $this;
    }

    /**
     * Get frontendImage
     *
     * @return string
     */
    public function getFrontendImage()
    {
        return $this->frontendImage;
    }

    /**
     * Set backendText
     *
     * @param string $backendText
     *
     * @return Layout
     */
    public function setBackendText($backendText)
    {
        $this->backendText = $backendText;

        return $this;
    }

    /**
     * Get backendText
     *
     * @return string
     */
    public function getBackendText()
    {
        return $this->backendText;
    }

    /**
     * Set backendImage
     *
     * @param string $backendImage
     *
     * @return Layout
     */
    public function setBackendImage($backendImage)
    {
        $this->backendImage = $backendImage;

        return $this;
    }

    /**
     * Get backendImage
     *
     * @return string
     */
    public function getBackendImage()
    {
        return $this->backendImage;
    }

    /**
     * Set rightsideText
     *
     * @param string $rightsideText
     *
     * @return Layout
     */
    public function setRightsideText($rightsideText)
    {
        $this->rightsideText = $rightsideText;

        return $this;
    }

    /**
     * Get rightsideText
     *
     * @return string
     */
    public function getRightsideText()
    {
        return $this->rightsideText;
    }

    /**
     * Set rightsideImage
     *
     * @param string $rightsideImage
     *
     * @return Layout
     */
    public function setRightsideImage($rightsideImage)
    {
        $this->rightsideImage = $rightsideImage;

        return $this;
    }

    /**
     * Get rightsideImage
     *
     * @return string
     */
    public function getRightsideImage()
    {
        return $this->rightsideImage;
    }

    /**
     * Set leftsideText
     *
     * @param string $leftsideText
     *
     * @return Layout
     */
    public function setLeftsideText($leftsideText)
    {
        $this->leftsideText = $leftsideText;

        return $this;
    }

    /**
     * Get leftsideText
     *
     * @return string
     */
    public function getLeftsideText()
    {
        return $this->leftsideText;
    }

    /**
     * Set leftsideImage
     *
     * @param string $leftsideImage
     *
     * @return Layout
     */
    public function setLeftsideImage($leftsideImage)
    {
        $this->leftsideImage = $leftsideImage;

        return $this;
    }

    /**
     * Get leftsideImage
     *
     * @return string
     */
    public function getLeftsideImage()
    {
        return $this->leftsideImage;
    }

    /**
     * Set addedBy
     *
     * @param string $addedBy
     *
     * @return Layout
     */
    public function setAddedBy($addedBy)
    {
        $this->addedBy = $addedBy;

        return $this;
    }

    /**
     * Get addedBy
     *
     * @return string
     */
    public function getAddedBy()
    {
        return $this->addedBy;
    }

    /**
     * Set installationId
     *
     * @param integer $installationId
     *
     * @return Layout
     */
    public function setInstallationId($installationId)
    {
        $this->installationId = $installationId;

        return $this;
    }

    /**
     * Get installationId
     *
     * @return int
     */
    public function getInstallationId()
    {
        return $this->installationId;
    }
}

