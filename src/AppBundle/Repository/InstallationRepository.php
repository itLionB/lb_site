<?php

namespace AppBundle\Repository;

/**
 * InstallationRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class InstallationRepository extends \Doctrine\ORM\EntityRepository
{
    public function getHotInstallations()
    {
        return $this->getEntityManager()
        ->createQuery(
            'SELECT i
            FROM AppBundle:Installation i
            WHERE i.hotStatus = :status
            AND i.status != :cancelledStatus'
        )
        ->setParameters(['status' => 'Yes', 'cancelledStatus' => 'Cancelled'])
        ->getResult();
    }

    public function getMissingConfirmation()
    {
        return $this->getEntityManager()
            ->createQuery(
                'SELECT i
                FROM AppBundle:Installation i
                WHERE (i.confirmationDateSet = :status OR i.confirmationDateSet is NULL)
                AND i.installationStatus <> :cancelledStatus'
            )
            ->setParameter('status', 'No')
            ->setParameter('cancelledStatus', 'Cancelled')
            ->getResult();    
    }

    public function getManufacturerNull()
    {
        return $this->getEntityManager()
            ->createQuery(
                'SELECT i
                FROM AppBundle:Installation i
                WHERE (i.installationCompany IS NULL OR i.installationCompany = :status)
                AND i.installationStatus <> :cancelledStatus'
            )
            ->setParameter('status', 'TBD')
            ->setParameter('cancelledStatus', 'Cancelled')
            ->getResult();
    }

    public function getSiteSpecifics()
    {
        return $this->getEntityManager()
            ->createQuery(
                'SELECT i
                FROM AppBundle:Installation i
                WHERE i.siteSpecifics = :status
                AND i.installationStatus <> :cancelledStatus'
            )
            ->setParameter('status', 'Yes')
            ->setParameter('cancelledStatus', 'Cancelled')
            ->getResult();
    }

    public function getNullDateInstallation()
    {
        return $this->getEntityManager()
            ->createQuery(
                'SELECT i
                FROM AppBundle:Installation i
                WHERE (i.installationDateSet =:instDate OR i.installationStatus = :status)
                AND i.installationStatus <> :cancelledStatus'
            )
            ->setParameters([
                'instDate' => 'No',
                'status' => 'Pending Install',
                'cancelledStatus' => 'Cancelled'
            ])
            ->getResult();
    }

    public function getHotPending()
    {
        return $this->getEntityManager()
            ->createQuery(
                'SELECT i
                FROM AppBundle:Installation i
                WHERE i.hotStatus = :status
                AND i.installationStatus != :cancelledStatus'
        )
            ->setParameters(
                [
                    'status' => 'Yes', 
                    'cancelledStatus' => 'Cancelled'
                ]
            )
            ->getResult();
    }

    public function getSiteSpecificsNoOrdered()
    {
        return $this->getEntityManager()
            ->createQuery(
                'SELECT i
                FROM AppBundle:Installation i
                WHERE i.stepOrdered =:stpeord
                AND i.installationStatus =:status
                AND i.siteSpecifics =:site
                AND i.installationStatus <> :cancelledStatus'
            )
            ->setParameters([
                'stpeord' => 'No',
                'status' => 'Pending Install',
                'site' => 'Yes',
                'cancelledStatus' => 'Cancelled'
            ])
            ->getResult();
    }

    public function getOnHold()
    {
        return $this->getEntityManager()
            ->createQuery(
                'SELECT i
                FROM AppBundle:Installation i
                WHERE i.installationStatus =:status'
            )
            ->setParameter('status', 'Hold')
            ->getResult();
    }

    public function getPendingToInstall()
    {
        return $this->getEntityManager()
            ->createQuery(
                'SELECT i
                FROM AppBundle:Installation i
                WHERE i.installationStatus =:status
                AND i.installationStatus <> :cancelledStatus'
            )
            ->setParameter('status', 'Pending to Install')
            ->setParameter('cancelledStatus' , 'Cancelled')
            ->getResult();
    }

    public function getDelayed()
    {
        
            
    }

    public function getCancelled()
    {
        return $this->getEntityManager()
            ->createQuery(
                'SELECT i
                FROM AppBundle:Installation i
                WHERE i.installationStatus =:status'
            )
            ->setParameter('status', 'Cancelled')
            ->getResult();
    }

    public function findInstManufacturer($data)
    {
        return $this->getEntityManager()
            ->createQuery(
                'SELECT i
                FROM AppBundle:Installation i
                WHERE i.installationCompany =:manufacturer'
            )
            ->setParameter('manufacturer', $data)
            ->getResult();
    }
}
