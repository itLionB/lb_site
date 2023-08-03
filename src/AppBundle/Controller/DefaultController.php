<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Form\Extension\Core\Type\TextType;


class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(Request $request)
    {
        $contact = $this->getDoctrine()->getRepository('AppBundle:Contact')->findContactById($this->getUser()->getId());

        // replace this example code with whatever you need
        return $this->render('default/index.html.twig', [
            'contact' => $contact
        ]);
    }


    public function myOptionsAction()
    {
        $user = $this->getDoctrine()->getRepository('AppBundle:Member')->find($this->getUser()->getId());
        $role = $user->getRoleApp();
        $user = $this->getUser()->getUserName();
        return $this->render('default/home.html.twig', [
            'user' => $user,
            'role' => $role
        ]);
    }
}
