<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use AppBundle\Entity\Sale;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\HiddenType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\MoneyType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;


class SalesController extends Controller
{
    public function indexAction(Request $request)
    {
        $userRole = $this->getUser()->getRoleApp();
        $user = $this->getUser()->getUserName();
        $sale = new Sale();

        $em = $this->getDoctrine()->getManager();
        $qb = $em->createQueryBuilder();

        $currentMonth = (new \DateTime())->format('n');
        $currentYear = (new \DateTime())->format('Y');

        // Realiza la consulta para obtener todas las ventas del mes actual
        $qb->select('s')
            ->from('AppBundle:Sale', 's')
            ->where(
                $qb->expr()->andX(
                    $qb->expr()->gte('s.date', ':startOfMonth'),
                    $qb->expr()->lte('s.date', ':endOfMonth')
                )
            )
            ->setParameter('startOfMonth', new \DateTime('first day of this month midnight'))
            ->setParameter('endOfMonth', new \DateTime('last day of this month 23:59:59'))
            ->orderBy('s.date', 'ASC'); // Ordenar de forma ascendente (de menor a mayor fecha)

        $query = $qb->getQuery();
        $currentSales = $query->getResult();
        $statesUSA = [
            'Alabama' => 'AL',
            'Alaska' => 'AK',
            'Arizona' => 'AZ',
            'Arkansas' => 'AR',
            'California' => 'CA',
            'Colorado' => 'CO',
            'Connecticut' => 'CT',
            'Delaware' => 'DE',
            'Florida' => 'FL',
            'Georgia' => 'GA',
            'Hawaii' => 'HI',
            'Idaho' => 'ID',
            'Illinois' => 'IL',
            'Indiana' => 'IN',
            'Iowa' => 'IA',
            'Kansas' => 'KS',
            'Kentucky' => 'KY',
            'Louisiana' => 'LA',
            'Maine' => 'ME',
            'Maryland' => 'MD',
            'Massachusetts' => 'MA',
            'Michigan' => 'MI',
            'Minnesota' => 'MN',
            'Mississippi' => 'MS',
            'Missouri' => 'MO',
            'Montana' => 'MT',
            'Nebraska' => 'NE',
            'Nevada' => 'NV',
            'New Hampshire' => 'NH',
            'New Jersey' => 'NJ',
            'New Mexico' => 'NM',
            'New York' => 'NY',
            'North Carolina' => 'NC',
            'North Dakota' => 'ND',
            'Ohio' => 'OH',
            'Oklahoma' => 'OK',
            'Oregon' => 'OR',
            'Pennsylvania' => 'PA',
            'Rhode Island' => 'RI',
            'South Carolina' => 'SC',
            'South Dakota' => 'SD',
            'Tennessee' => 'TN',
            'Texas' => 'TX',
            'Utah' => 'UT',
            'Vermont' => 'VT',
            'Virginia' => 'VA',
            'Washington' => 'WA',
            'West Virginia' => 'WV',
            'Wisconsin' => 'WI',
            'Wyoming' => 'WY',
        ];
        $form = $this->createFormBuilder($sale)
            ->add('name', TextType::class,
                array(
                    'attr' => [
                        'class' => 'form-control'
                    ]
                )
            )
            ->add('state', ChoiceType::class, [
                'choices' => $statesUSA,
                    'attr' => [
                        'class' => 'form-control'
                    ]
                ]
            )
            ->add('caller', EntityType::class, array(
                'class' => 'AppBundle:Agent',
                'choice_label' => 'name',
                
                'attr' => array(
                    'class' => 'form-control'
                    )
                )
            )
            ->add('quoter', EntityType::class, array(
                'class' => 'AppBundle:Agent',
                'choice_label' => 'name',
                
                'attr' => array(
                    'class' => 'form-control'
                    )
                )
            )
            ->add('price', TextType::class,
                array(
                    'attr' => [
                        'class' => 'form-control'
                    ]
                )
            )
            ->add('date', DateType::class, array(
                'widget' => 'choice',
                'attr' => array(
                    'class' => 'form-control'
                    )
                )
            )
            ->add('save', SubmitType::class,
                array(
                    'label' => 'Add Sale',
                    'attr' => array(
                        'class' => 'btn btn-success mt-3 pull-right'
                        )
                    )
                )
            ->getForm();

            $form->handleRequest($request);
            
            if($form->isSubmitted() && $form->isValid())
            {
                $sale = $form->getData();
                $sale->setCreatedBy($user);
                $em = $this->getDoctrine()->getManager();
                $em->persist($sale);
                $em->flush();
                return $this->redirectToRoute('show_sales');
            }
        //$contact = $this->getDoctrine()->getRepository('AppBundle:Contact')->findContactById($this->getUser()->getId());
        
        // replace this example code with whatever you need
        return $this->render('sales/index.html.twig', [
            'role' => $userRole,
            'user' => $user,
            'form' => $form->createView(),
            'sale' => $currentSales
        ]);
    }

    public function addSaleAction()
    {
        $sale = new Sale();

        $form = $this->createFormBuilder($sale)
            ->add('name', TextType::class,
                array(
                    'attr' => [
                        'class' => 'form-control'
                    ]
                )
            )
            ->add('state', TextType::class,
                array(
                    'attr' => [
                        'class' => 'form-control'
                    ]
                )
            )
            ->add('caller', EntityType::class, array(
                'class' => 'AppBundle:Agent',
                'choice_label' => 'name',
                
                'attr' => array(
                    'class' => 'form-control'
                    )
                )
            )
            ->add('quoter', EntityType::class, array(
                'class' => 'AppBundle:Agent',
                'choice_label' => 'name',
                
                'attr' => array(
                    'class' => 'form-control'
                    )
                )
            )
            ->add('price', TextType::class,
                array(
                    'attr' => [
                        'class' => 'form-control'
                    ]
                )
            )
            ->add('date', DateType::class, array(
                'widget' => 'choice',
                'attr' => array(
                    'class' => 'form-control'
                    )
                )
            )
            ->add('save', SubmitType::class,
                array(
                    'label' => 'Add Owners',
                    'attr' => array(
                        'class' => 'btn btn-success mt-3 pull-right'
                        )
                    )
                )
            ->getForm();

            $form->handleRequest($request);
            
            if($form->isSubmitted() && $form->isValid())
            {
                $em = $this->getDoctrine()->getManager();
                $em->persist($sale);
                $em->flush();
            }
            
    }

}
