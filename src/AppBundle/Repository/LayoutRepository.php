<?php

namespace AppBundle\Repository;

/**
 * LayoutRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class LayoutRepository extends \Doctrine\ORM\EntityRepository
{
    public function findLayout($id)
    {
        return $this->getEntityManager()
            ->createQuery(
                'SELECT l
                FROM AppBundle:Layout l
                WHERE l.installationId = :id'
            )
            ->setParameter('id', $id)
            ->getResult();
    }
}
