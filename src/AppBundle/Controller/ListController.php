<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use AppBundle\Entity\Installation;

class ListController extends Controller
{

    public function indexAction(Request $request)
    {
        return $this->render('List/index.html.twig');
    }

    public function hotPendingAction()
    {

        $user = $this->getUser();
        $roleApp = $user->getRoleApp();
        $hotInstallations = $this->getDoctrine()
            ->getRepository('AppBundle:Installation')
            ->getHotInstallations();

        return $this->render('List/Tables/HotPending.html.twig', array(
            'installation' => $hotInstallations,
            'roleApp' => $roleApp,
            'user' => $user
        ));
    }

    public function showDashboardAction()
    {
        $user = $this->getUser()->getUserName();
        $roleApp = $this->getUser()->getRoleApp();
        $installations = $this->getDoctrine()
            ->getRepository('AppBundle:Installation')
            ->getMissingConfirmation();
        $installationsCount = count($installations);
        return $this->render('List/Tables/Dashboard.html.twig', array(
            'role' => $roleApp,
            'user' => $user,
            'installation' => $installations,
            'installationCount' => $installationsCount
        ));
    }
    
    
}
