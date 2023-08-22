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
            )
        );
    }

    public function filterByManufacturerAction(Request $request)
    {
        $user = $this->getUser()->getUserName();
        $roleApp = $this->getUser()->getRoleApp();
        $installation = new Installation();
        $form = $this->createFormBuilder($installation)
            ->add('installationCompany', EntityType::class, array(
                'class' => 'AppBundle:Manufacturer',
                'choice_label' => 'name',
                'attr' => array(
                    'class' => 'form-control'
                    )
                )
            )
            ->add('save', SubmitType::class, array(
                'label' => 'Filter',
                'attr' => array(
                    'class' => 'btn btn-primary pull-right'
                )
            ))
            ->getForm();

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $manufacturer = $this->getDoctrine()->getRepository('AppBundle:Manufacturer')->find($installation->getInstallationCompany());
            $manufacturerName = $manufacturer->getName();

            $installations = $this->getDoctrine()
                ->getRepository('AppBundle:Installation')
                ->findInstManufacturer($manufacturerName);

            return $this->render('List/Tables/FilterByManufacturerList.html.twig', array(
                'installation' => $installations,
                'role' => $roleApp,
                'user' => $user
            ));
        }

        return $this->render('List/Tables/ByManufacturer.html.twig', array(
            'form' => $form->createView(),
            'role' => $roleApp,
            'user' => $user
        ));
    }
    
    
}
