<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use AppBundle\Entity\Agent;
use AppBundle\Entity\Manufacturer;

class CatalogController extends Controller
{
    public function indexAction(Request $request)
    {
        $roleUser = $this->getUser()->getRoleApp();
        $user = $this->getUser()->getUserName();
        return $this->render('Catalogs/index.html.twig',[
            'role' => $roleUser,
            'user' => $user
            ]
        );
    }

    public function showAgentAction()
    {
        $agents = $this->getDoctrine()->getRepository('AppBundle:Agent')->findActive();
        $i_agents = $this->getDoctrine()->getRepository('AppBundle:Agent')->findInactive();
        
        return $this->render('Catalogs/Tables/Agents.html.twig', [
            'agent' => $agents,
            'i_agent' => $i_agents
            ]
        );
    }

    public function addAgentAction(Request $request)
    {
        $agent = new Agent();

        $form = $this->createFormBuilder($agent)
            ->add('name', TextType::class, array(
                'attr' => array(
                    'class' => 'form-control'
                ),
                'required' => false
                )
            )
            ->add('email', EmailType::class, array(
                'attr' => array(
                    'class' => 'form-control not-required'
                ),
                'required' => false
                )
            )
            ->add('save', SubmitType::class, array(
                'label' => 'Add Agent', 'attr' => array(
                    'class' => 'btn btn-success mt-3 pull-right btn-lg'
                    )
                )
            )
            ->getForm();

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $agent = $form->getData();

            $agent->setStatus('Active');

            $em = $this->getDoctrine()->getManager();
            $em->persist($agent);   
            $em->flush();

            return $this->redirectToRoute('show_agent');
        }
        
        return $this->render('Catalogs/Forms/Agent.html.twig', [
            'form' => $form->createView(),
            'agent' => $agent
            ]
        );
    }

    public function deleteAgentAction($id)
    {
        $em = $this->getDoctrine()->getManager();
        $agent = $this->getDoctrine()->getRepository('AppBundle:Agent')->find($id);

        $agent->setStatus('Inactive');
        
        $em->flush();

        return $this->redirectToRoute('show_agent');
    }

    public function activateAgentAction($id)
    {
        $em = $this->getDoctrine()->getManager();
        $agent = $this->getDoctrine()->getRepository('AppBundle:Agent')->find($id);

        $agent->setStatus('Active');
        
        $em->flush();

        return $this->redirectToRoute('show_agent');
    }

    public function showManufacturerAction()
    {
        $manufacturer = $this->getDoctrine()->getRepository('AppBundle:Manufacturer')->findAll();
        
        return $this->render('Catalogs/Tables/Manufacturers.html.twig',
            ['manufacturer' => $manufacturer]
        );
    }

    public function addManufacturerAction(Request $request)
    {
        $manufacturer = new Manufacturer();

        $form = $this->createFormBuilder($manufacturer)
            ->add('name', TextType::class, array(
                'attr' => array(
                    'class' => 'form-control mb-3',
                    'placeholder' => 'Manufacturer Name'
                    )
                )
            )
            ->add('email', EmailType::class, array(
                'attr' => array(
                    'class' => 'form-control pull-right mb-3',
                    'placeholder' => 'Manufacturer Email'
                    )
                )
            )
            ->add('number', IntegerType::class, array(
                'attr' => array(
                    'class' => 'form-control',
                    'placeholder' => 'Manufacturer Number'
                    )
            )
            )
            ->add('save', SubmitType::class, array(
                'label' => 'Add Manufacturer', 'attr' => array(
                    'class' => 'btn btn-success mt-3 pull-right btn-lg'
                    )
                )
            )
            ->getForm();
        
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $manufacturer = $form->getData();

            $em = $this->getDoctrine()->getManager();
            $em->persist($manufacturer);   
            $em->flush();

            return $this->redirectToRoute('show_manufacturer');
        }

        return $this->render('Catalogs/Forms/Manufacturer.html.twig', [
            'form' => $form->createView(),
            'manufacturer' => $manufacturer
            ]
        );
    }
}
