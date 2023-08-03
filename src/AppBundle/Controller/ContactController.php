<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\HiddenType;
use Doctrine\Common\Collections\ArrayCollection;
use AppBundle\Form\ContactType;
use AppBundle\Entity\Contact;

class ContactController extends Controller
{

    public function indexAction(Request $request)
    {

        $contact = $this->getDoctrine()->getRepository('AppBundle:Contact')->findContactById($this->getUser()->getId());

        return $this->render('default/index.html.twig',[
            'contact' => $contact
            ]
        );
    }

    public function addContactAction(Request $request)
    {
        $contact = new Contact();
        $id_sesion = $this->getUser()->getId();

        $form = $this->createFormBuilder($contact)
        ->add('name', TextType::class, array(
                'attr' => array(
                    'class' => 'form-control', 
                    'style' => 'margin-bottom:15px'
                    )
                )
            ) 
        ->add('adress', TextType::class, array(
                'attr' => array(
                    'class' => 'form-control', 
                    'style' => 'margin-bottom:15px'
                    )
                )
            ) 
        ->add('gender', ChoiceType::class, [
                'choices'  => [
                    'Hombre' => 'Hombre', 
                    'Mujer' => "Mujer",
                ],
                'attr' => array(
                    'class' => 'form-control', 
                    'style' => 'margin-bottom:15px'
                    )
                ]
            )

        ->add('user_id', HiddenType::class, array(
                'data' => $id_sesion
            ))
        ->add('save', SubmitType::class, array(
                'attr' => array(
                    'style' => 'btn btn-primary'
                ), 'attr' => array(
                        'class' => 'form-control'
                    )
                ) 
            )
        ->getForm();

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid())
        {
            $name = $form['name']->getData();
            $adress = $form['adress']->getData();
        
            $contact->setName($name);
            $contact->setAdress($adress);

            $em = $this->getDoctrine()->getManager();

            $em->persist($contact);
            $em->flush();

            $this->addFlash(
                'notice',
                'Contact Added'
            );

            return $this->redirectToRoute('contact');
        }

        return $this->render('contact/newContact.html.twig', array(
            'form' => $form->createView(),
            'id_sesion' => $id_sesion
        ));
    }
    public function addContactModalAction(Request $request)
    {
        $contact = new Contact();
        $id_sesion = $this->getUser()->getId();

        $form = $this->createFormBuilder($contact)
        ->add('name', TextType::class, array(
                'attr' => array(
                    'class' => 'form-control', 
                    'style' => 'margin-bottom:15px'
                    )
                )
            ) 
        ->add('adress', TextType::class, array(
                'attr' => array(
                    'class' => 'form-control', 
                    'style' => 'margin-bottom:15px'
                    )
                )
            ) 
        ->add('gender', ChoiceType::class, [
                'choices'  => [
                    'Hombre' => 'Hombre', 
                    'Mujer' => "Mujer",
                ],
                'attr' => array(
                    'class' => 'form-control', 
                    'style' => 'margin-bottom:15px'
                    )
                ]
            )

        ->add('user_id', HiddenType::class, array(
                'data' => $id_sesion
            ))
        ->add('save', SubmitType::class, array(
                'attr' => array(
                    'style' => 'btn btn-primary'
                ), 'attr' => array(
                        'class' => 'form-control'
                    )
                ) 
            )
        ->getForm();

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid())
        {
            $name = $form['name']->getData();
            $adress = $form['adress']->getData();
        
            $contact->setName($name);
            $contact->setAdress($adress);

            $em = $this->getDoctrine()->getManager();

            $em->persist($contact);
            $em->flush();

            $this->addFlash(
                'notice',
                'Contact Added'
            );

            return $this->redirectToRoute('contact');
        }

        return $this->render('contact/form.html.twig', array(
            'form' => $form->createView(),
            'id_sesion' => $id_sesion
        ));
    }

    public function viewContactAction($id)
    {
        $contact = $this->getDoctrine()->getRepository('AppBundle:Contact')->find($id);

        return $this->render('contact/viewContact.html.twig', [
            'contact' => $contact
            ]
        );
    }
    /**
     * @param Request $request
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function editContactAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();
        /** 
        * @var Contact $contact 
        */
        $contact = $em->getRepository('AppBundle:Contact')->findOneBy(['id' => $id]);
        $originalNumber = new ArrayCollection();

        foreach ($contact->getNumber() as $number) {
            $originalNumber->add($number);
        }

        $form = $this->createForm(ContactType::class, $contact);
        

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            foreach ($originalNumber as $number) {
                dump($contact->getNumber()->contains($number));
                if ($contact->getNumber()->contains($number) === false) {
                    $em->remove($number);
                }
            }
            $em->persist($contact);
            $em->flush();
        }

        return $this->render('contact/editContact.html.twig', [
            'form' => $form->createView()
        ]);
       
    }

    public function deleteContactAction($id)
    {
        $em = $this->getDoctrine()->getManager();
        $contact = $em->getRepository('AppBundle:Contact')->find($id);

        $em->remove($contact);
        $em->flush();

        return $this->redirectToRoute('contact');
        
    }
    
    public function home_contactAction()
    {
        $contact = new Contact();
        $form = $this->createForm(ContactType::class, $contact);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            dump($contact);
        }
        // replace this example code with whatever you need
        return $this->render('default/home.html.twig', [
            'form' => $form->createView()
        ]);
    }

}
