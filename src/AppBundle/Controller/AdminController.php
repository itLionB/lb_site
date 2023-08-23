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

class AdminController extends Controller
{
    public function registerNewAction()
    {
        $agent = new Agent();
        $form = $this->createFormBuilder($agent)
            ->add('name', TextType::class)
            ->add('email', EmailType::class)
            ->add('phone', IntegerType::class)
            ->add('save', SubmitType::class, array('label' => 'Submit'))
            ->getForm();

        return $this->render('catalog/register.html.twig', array(
            'form' => $form->createView(),
        ));
    }
}
