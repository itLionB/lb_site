<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use AppBundle\Entity\Installation;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
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

    public function showDashboardAction(Request $request)
    {
        $user = $this->getUser()->getUserName();
        $roleApp = $this->getUser()->getRoleApp();
        $installations = $this->getDoctrine()
            ->getRepository('AppBundle:Installation')
            ->getMissingConfirmation();

        $nullManufacturer = $this->getDoctrine()
            ->getRepository('AppBundle:Installation')
            ->getManufacturerNull();

        $siteSpecifics = $this->getDoctrine()
            ->getRepository('AppBundle:Installation')
            ->getSiteSpecifics();

        $nullDateInstallation = $this->getDoctrine()
            ->getRepository('AppBundle:Installation')
            ->getNullDateInstallation();

        $hotPending= $this->getDoctrine()
            ->getRepository('AppBundle:Installation')
            ->getHotPending();

        $stpeNoOrdered = $this->getDoctrine()
            ->getRepository('AppBundle:Installation')
            ->getSiteSpecificsNoOrdered();

        $onHold = $this->getDoctrine()
            ->getRepository('AppBundle:Installation')
            ->getOnHold();
        
        $pendingToInstall = $this->getDoctrine()
            ->getRepository('AppBundle:Installation')
            ->getPendingToInstall();

        $newInstallation = new Installation();
        
        $formFilterManufacturer = $this->createFormBuilder($newInstallation)
            ->add('installationCompany', EntityType::class, array(
                'label' => 'Manufacturer',
                'class' => 'AppBundle:Manufacturer',
                'choice_label' => 'name',
                'attr' => array(
                    'class' => 'form-control'
                    )
                )
            )
            ->add('save', SubmitType::class, array(
                'label' => 'Search by Manufacturer',
                )
            )
            ->getForm();

        $formFilterManufacturer->handleRequest($request);
                
        if ($formFilterManufacturer->isSubmitted() && $formFilterManufacturer->isValid()) {
            $installationCompany = $formFilterManufacturer->getData()->getInstallationCompany();
            $installations = $this->getDoctrine()
                ->getRepository('AppBundle:Installation')
                ->findByInstallationCompany($installationCompany);
            
            return $this->render('List/Tables/ByManufacturer.html.twig', array(
                'role' => $roleApp,
                'user' => $user,
                'installation' => $installations,
                'nullManufacturer' => $nullManufacturer,
                'hotPending' => $hotPending,
                'siteSpecifics' => $siteSpecifics,
                'nullDateInstallation' => $nullDateInstallation,
                'stpeNoOrdered' => $stpeNoOrdered,
                'onHold' => $onHold,
                'pendingToInstall' => $pendingToInstall,
                'formFilterManufacturer' => $formFilterManufacturer->createView()        
                )
            );
        }
        

        return $this->render('List/Tables/Dashboard.html.twig', array(
            'role' => $roleApp,
            'user' => $user,
            'installation' => $installations,
            'nullManufacturer' => $nullManufacturer,
            'hotPending' => $hotPending,
            'siteSpecifics' => $siteSpecifics,
            'nullDateInstallation' => $nullDateInstallation,
            'stpeNoOrdered' => $stpeNoOrdered,
            'onHold' => $onHold,
            'pendingToInstall' => $pendingToInstall,
            'formFilterManufacturer' => $formFilterManufacturer->createView()        
            )
        );
    }
    
    
}
