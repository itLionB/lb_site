<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use AppBundle\Entity\Installation;
use AppBundle\Entity\Modification;
use AppBundle\Entity\Layout;
use Symfony\Component\Form\Extension\Core\Type\TextType;
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
use Doctrine\ORM\EntityRepository;
use Symfony\Component\Form\Extension\Core\Type\FileType;


use datetime;

class InstallationController extends Controller
{

    public function indexAction()
    {
        $userRole = $this->getUser()->getRoleApp();
        $user = $this->getUser()->getUserName();
        $installations = $this->getDoctrine()->getRepository('AppBundle:Installation')->findAll();

        return $this->render('Installation/index.html.twig',[
            'installation' => $installations,
            'role' => $userRole,
            'user' => $user
            ]
        );
    } 

    public function addInstallationAction(Request $request)
    {
        $installation = new Installation();

        $form = $this->createFormBuilder($installation)
            ->add('customerName', TextType::class,
                array(
                    'attr' => array(
                        'class' => 'form-control'
                        )
                    )
                )
            ->add('customerPhone', TextType::class,
                array(
                    'attr' => array(
                        'class' => 'form-control'
                        )
                    )
                )
            ->add('customerEmail', EmailType::class,
                array(
                    'attr' => array(
                        'class' => 'form-control'
                        )
                    )
                )
            ->add('installationAddress', TextType::class,
                array(
                    'attr' => array(
                        'class' => 'form-control'
                        )
                    )
                )
            ->add('city', TextType::class,
                array(
                    'attr' => array(
                        'class' => 'form-control'
                        )
                    )
                )
            ->add('state', TextType::class,
                array(
                    'attr' => array(
                        'class' => 'form-control'
                        )
                    )
                )
            ->add('zipCode', TextType::class,
                array(
                    'attr' => array(
                        'class' => 'form-control'
                        )
                    )
                )
            ->add('description', TextType::class,
                array(
                    'attr' => array(
                        'class' => 'form-control'
                        )
                    )
                )
            ->add('save', SubmitType::class,
                array(
                    'label' => 'Add Installation',
                    'attr' => array(
                        'class' => 'btn btn-success mt-3 pull-right'
                        )
                    )
                )
            ->getForm();

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $installation = $form->getData();

            $installation->setRegisterCreated(new \DateTime('now'));
            $installation->setInstallationStatus('Pending');
            $installation->setCreatedBy($this->getUser()->getUserName());
            $installation->setInstallationDateSet('No');
            //$installation->setInstallationDate('2000-01-01');

            $em = $this->getDoctrine()->getManager();
            $em->persist($installation);
            $em->flush();

            return $this->redirectToRoute('installation');
        }

        return $this->render('Installation/Forms/Installation.html.twig', array(
            'form' => $form->createView()
        ));
    }

    public function showDetailsAction($id)
    {
        $userRole = $this->getUser()->getRoleApp();
        $installation = $this->getDoctrine()->getRepository('AppBundle:Installation')->find($id);
        $modifications = $this->getDoctrine()->getRepository('AppBundle:Modification')->getModificationsByInstallationId($installation->getId());
        $user = $this->getUser()->getUserName();
        $roleApp = $this->getUser()->getRoleApp();
        $layout = $this->getDoctrine()->getRepository('AppBundle:Layout')->findLayout($installation->getId());
        
        $intervalInstallation = $installation->getDpDate()->diff(new \DateTime('now'));
        $nInstallation = $intervalInstallation->days;

        $intervalCustomer = $installation->getAddedLead()->diff($installation->getContractSigned());
        $nCustomer = $intervalCustomer->days;

        $em = $this->getDoctrine()->getManager();
        $installation->setDaysInstall($nInstallation);
        $installation->setDaysCustomer($nCustomer);
        $em->persist($installation);
        $em->flush();

        return $this->render('Installation/Tables/Info.html.twig',[
            'installation' => $installation,
            'modification' => $modifications,
            'layout' => $layout,
            'role' => $userRole,
            'user' => $user,
            'roleApp' => $roleApp,
            'nInstallation' => $nInstallation
            ]
        );
    }

    public function editCustomerAction(Request $request, $id)
    {
        $installation = $this->getDoctrine()->getRepository('AppBundle:Installation')->find($id);

        $form= $this->createFormBuilder($installation)
            ->add('customerName', TextType::class,
                array(
                    'attr' => array(
                        'class' => 'form-control'
                        )
                    )
                )
            ->add('customerPhone', TextType::class,
                array(
                    'attr' => array(
                        'class' => 'form-control'
                        )
                    )
                )
            ->add('customerEmail', EmailType::class,
                array(
                    'attr' => array(
                        'class' => 'form-control'
                        )
                    )
                )
            ->add('save', SubmitType::class,
                array(
                    'label' => 'Edit Customer',
                    'attr' => array(
                        'class' => 'btn btn-success mt-3 pull-right'
                        )
                    )
                )
            ->getForm();

        $form->handleRequest($request);
    
        if($form->isSubmitted() && $form->isValid()){
            $installation = $form->getData();
            $modification = new Modification();

            $modification->setUserId($this->getUser()->getUserName());
            $modification->setPlaceChanged('Customer Data');
            $modification->setModificationDate(new \DateTime('now'));
            $modification->setInstallationId($installation->getId());
            $em = $this->getDoctrine()->getManager();

            $em->persist($installation);
            $em->flush();
            $em->persist($modification);
            $em->flush();

            $userRole = $this->getUser()->getRoleApp();
            $user = $this->getUser()->getUserName();

            $modifications = $this->getDoctrine()->getRepository('AppBundle:Modification')->getModificationsByInstallationId($installation->getId());
            return $this->render('Installation/Tables/Info.html.twig',[
                'installation' => $installation,
                'modification' => $modifications,
                'role' => $userRole,
                'user' => $user
                ]
            );
        }

        return $this->render('Installation/Forms/EditInfo.html.twig', array(
            'form' => $form->createView(),
            'installation' => $installation
        ));

    }

    public function editInstallationInfoAction(Request $request, $id)
    {
        $installation = $this->getDoctrine()->getRepository('AppBundle:Installation')->find($id);
        
        $form= $this->createFormBuilder($installation)
            ->add('installationAddress', TextType::class,
                array(
                    'attr' => array(
                        'class' => 'form-control'
                        )
                    )
                )
            ->add('city', TextType::class,
                array(
                    'attr' => array(
                        'class' => 'form-control'
                        )
                    )
                )
            ->add('state', TextType::class,
                array(
                    'attr' => array(
                        'class' => 'form-control'
                        )
                    )
                )
            ->add('zipCode', TextType::class,
                array(
                    'attr' => array(
                        'class' => 'form-control'
                        )
                    )
                )
            ->add('description', TextType::class,
                array(
                    'attr' => array(
                        'class' => 'form-control'
                        )
                    )
                )   
            ->add('save', SubmitType::class,
                array(
                    'label' => 'Edit Installation Info',
                    'attr' => array(
                        'class' => 'btn btn-success mt-3 pull-right'
                        )
                    )
                )
            ->getForm();

        $form->handleRequest($request);
    
        if($form->isSubmitted() && $form->isValid()){
            $installation = $form->getData();

            $modification = new Modification();
            $modification->setUserId($this->getUser()->getUserName());
            $modification->setPlaceChanged('Information About Installation');
            $modification->setModificationDate(new \DateTime('now'));
            $modification->setInstallationId($installation->getId());

            $em = $this->getDoctrine()->getManager();
            $em->persist($installation);
            $em->flush();
            $em->persist($modification);
            $em->flush();

            $userRole = $this->getUser()->getRoleApp();
            $user = $this->getUser()->getUserName();
        
            $modifications = $this->getDoctrine()->getRepository('AppBundle:Modification')->getModificationsByInstallationId($installation->getId());

            return $this->render('Installation/Tables/Info.html.twig',[
                'installation' => $installation,
                'modification' => $modifications,
                'role' => $userRole,
                'user' => $user
                ]
            );
        }

        return $this->render('Installation/Forms/EditInfo.html.twig', array(
            'form' => $form->createView(),
            'installation' => $installation,
        ));
    }

    public function editBalanceInfoAction(Request $request, $id)
    {
        $installation = $this->getDoctrine()->getRepository('AppBundle:Installation')->find($id);
        
        $form= $this->createFormBuilder($installation)
                ->add('buildingPiTaxes', NumberType::class, array(
                    'label' => 'Price with Taxes',
                    'attr' => array(
                        'class' => 'form-control',
                        'placeholder' => 'Building PI Taxes'
                        )
                    )
                )
                ->add('priceNtax', NumberType::class, array(
                    'label' => 'Price without Taxes',
                    'attr' => array(
                        'class' => 'form-control',
                        'label' => 'Price without Taxes',
                        )
                    )
                )
                ->add('downpayment', NumberType::class, array(
                    'attr' => array(
                        'class' => 'form-control',
                        'placeholder' => 'Downpayment'
                        )
                    )
                )
                ->add('dpMethod', ChoiceType::class, array(
                    'choices' => array(
                        'Select a Method' => null,
                        'Stripe' => 'Stripe',
                        'Cash' => 'Cash',
                        'Check' => 'Check',
                        'Wire Transfer' => 'Wire Transfer'
                        ),
                    'attr' => array(
                        'class' => 'form-control'
                        )
                    )
                )
                ->add('dpDate', DateType::class, array(
                    'widget' => 'choice',
                    'attr' => array(
                        'class' => 'form-control'
                        )
                    )
                )
                ->add('payment2', NumberType::class, array(
                    'attr' => array(
                        'class' => 'form-control',
                        'placeholder' => 'Building PI Taxes'
                        )
                    )
                )
                ->add('payment2Method', ChoiceType::class, array(
                    'choices' => array(
                        'Select a Method' => null,
                        'Stripe' => 'Stripe',
                        'Cash' => 'Cash',
                        'Check' => 'Check',
                        'Wire Transfer' => 'Wire Transfer'
                        ),
                    'attr' => array(
                        'class' => 'form-control'
                        )
                    )
                )
                ->add('payment2Date', DateType::class, array(
                    'widget' => 'choice',
                    'attr' => array(
                        'class' => 'form-control'
                        )
                    )
                )
                ->add('balanceDuInstallation', NumberType::class, array(
                    'attr' => array(
                        'class' => 'form-control',
                        'placeholder' => 'Balance Due '
                        )
                    )
                )
                ->add('financed', ChoiceType::class, array(
                    'choices' => array(
                        'Select a Option' => null,
                        'Yes' => 'Yes',
                        'No' => 'No'
                        ),
                    'attr' => array(
                        'class' => 'form-control'
                        )
                    )
                )
                ->add('financingCompany',ChoiceType::class, array(
                    'choices' => array(
                        'Select a Company' => null,
                        'RTO' => 'RTO',
                        'EZ' => 'EZ',
                        'HSF' => 'HSF',
                        'Other' => 'Other'
                        ),
                    'attr' => array(
                        'class' => 'form-control'
                        )
                    )
                )
                ->add('financingOther', TextType::class, array(
                    'attr' => array(
                        'class' => 'form-control',
                        'placeholder' => 'Other'
                        )
                    )
                )
                ->add('save', SubmitType::class,
                array(
                    'label' => 'Edit Balance Info',
                    'attr' => array(
                        'class' => 'btn btn-success mt-3 pull-right'
                        )
                    )
                )
            ->getForm();

        $form->handleRequest($request);
    
        if($form->isSubmitted() && $form->isValid()){
            $installation = $form->getData();
            $em = $this->getDoctrine()->getManager();
            $em->persist($installation);
            $em->flush();

            $modification = new Modification();

            $modification->setUserId($this->getUser()->getUserName());
            $modification->setPlaceChanged('Balance Info');
            $modification->setModificationDate(new \DateTime('now'));
            $modification->setInstallationId($installation->getId());

            $em->persist($modification);
            $em->flush();

            $modifications = $this->getDoctrine()->getRepository('AppBundle:Modification')->getModificationsByInstallationId($installation->getId());
            $userRole = $this->getUser()->getRoleApp();
            $user = $this->getUser()->getUserName();
            $layout = $this->getDoctrine()->getRepository('AppBundle:Layout')->findLayout($installation->getId());
            return $this->render('Installation/Tables/Info.html.twig',[
                'installation' => $installation,
                'modification' => $modifications,
                'layout' => $layout,
                'role' => $userRole,
                'user' => $user
                ]
            );
        }

        return $this->render('Installation/Forms/EditInfo.html.twig', array(
            'form' => $form->createView(),
            'installation' => $installation
        ));
    }

    public function addOwnersAction(Request $request, $id)
    {
        $installation = $this->getDoctrine()->getRepository('AppBundle:Installation')->find($id);


        $form = $this->createFormBuilder($installation)
            ->add('salesOwner', EntityType::class, array(
                'class' => 'AppBundle:Agent',
                'data' => $installation->getSalesOwner(),
                'choice_label' => 'name',
                
                'attr' => array(
                    'class' => 'form-control'
                    )
                )
            )
            ->add('salesCaller', EntityType::class, array(
                'class' => 'AppBundle:Agent',
                'data' => $installation->getSalesCaller(),
                'choice_label' => 'name',
                
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

        if($form->isSubmitted() && $form->isValid()){
            $installation = $form->getData();

            $modification = new Modification();

            $modification->setUserId($this->getUser()->getUserName());
            $modification->setPlaceChanged('Owners');
            $modification->setModificationDate(new \DateTime('now'));
            $modification->setInstallationId($installation->getId());

            $em = $this->getDoctrine()->getManager();
            $em->persist($installation);
            $em->flush();

            $em->persist($modification);
            $em->flush();


            $modification = $this->getDoctrine()->getRepository('AppBundle:Modification')->getModificationsByInstallationId($installation->getId());
            $userRole = $this->getUser()->getRoleApp();
            $user = $this->getUser()->getUserName();

            return $this->render('Installation/Tables/Info.html.twig',[
                'installation' => $installation,
                'modification' => $modification,
                'role' => $userRole,
                'user' => $user
                ]
            );
        }

        return $this->render('Installation/Forms/EditInfo.html.twig', array(
            'form' => $form->createView(),
            'installation' => $installation
        ));

    }

    public function editSenseiInfoAction(Request $request, $id)
    {
        $installation = $this->getDoctrine()->getRepository('AppBundle:Installation')->find($id);


        $form = $this->createFormBuilder($installation)
            ->add('addedLead', DateType::class, array(
                'widget' => 'choice',
                'attr' => array(
                    'class' => 'form-control'
                    )
                )
            )
            ->add('quoted', DateType::class, array(
                'widget' => 'choice',
                'attr' => array(
                    'class' => 'form-control'
                    )
                )
            )
            ->add('contractSigned', DateType::class, array(
                'widget' => 'choice',
                'attr' => array(
                    'class' => 'form-control'
                    )
                )
            )
            ->add('notesSensei', TextareaType::class, array(
                'attr' => array(
                    'class' => 'form-control',
                    'placeholder' => 'Notes'
                    )
                )
            )
            ->add('quoteNumber', TextType::class, array(
                'attr' => array(
                    'class' => 'form-control',
                    'placeholder' => 'Quote Number'
                    )
                )
            )
            ->add('orderNumber', TextType::class, array(
                'attr' => array(
                    'class' => 'form-control',
                    'placeholder' => 'Order Number'
                    )
                )
            )
            ->add('invoiceNumber', TextType::class, array(
                'attr' => array(
                    'class' => 'form-control',
                    'placeholder' => 'Invoice Number'
                    )
                )
            )
            ->add('callsBeforePayments', TextareaType::class, array(
                'attr' => array(
                    'class' => 'form-control',
                    'placeholder' => 'Calls Before Payments'
                    )
                )
            )
            ->add('textsBeforePayments', TextareaType::class, array(
                'attr' => array(
                    'class' => 'form-control',
                    'placeholder' => 'Texts Before Payments'
                    )
                )
            )
            ->add('save', SubmitType::class,
                array(
                    'label' => 'Edit Sensei Info',
                    'attr' => array(
                        'class' => 'btn btn-success mt-3 pull-right'
                        )
                    )
                )
            ->getForm();

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $installation = $form->getData();

            $modification = new Modification();

            $modification->setUserId($this->getUser()->getUserName());
            $modification->setPlaceChanged('Sensei Info');
            $modification->setModificationDate(new \DateTime('now'));
            $modification->setInstallationId($installation->getId());

            $em = $this->getDoctrine()->getManager();
            $em->persist($installation);
            $em->flush();

            $em->persist($modification);
            $em->flush();

            $modifications = $this->getDoctrine()->getRepository('AppBundle:Modification')->getModificationsByInstallationId($installation->getId());
            $userRole = $this->getUser()->getRoleApp();
            $user = $this->getUser()->getUserName();

            return $this->render('Installation/Tables/Info.html.twig',[
                'installation' => $installation,
                'modification' => $modifications,
                'role' => $userRole,
                'user' => $user
                ]
            );
        }

        return $this->render('Installation/Forms/EditInfo.html.twig', array(
            'form' => $form->createView(),
            'installation' => $installation
        ));
    }

    public function editChangesInfoAction(Request $request, $id)
    {
        $installation = $this->getDoctrine()->getRepository('AppBundle:Installation')->find($id);

        $form = $this->createFormBuilder($installation)
            ->add('anyChanges', ChoiceType::class, array(
                'choices' => array(
                    'Select an Option' => null,
                    'Yes' => 'Yes',
                    'No' => 'No'
                    ),
                'attr' => array(
                    'class' => 'form-control'
                    )
                )
            )
            ->add('orderConfirmation',DateType::class, array(
                'widget' => 'choice',
                'attr' => array(
                    'class' => 'form-control datepicker',
                    'id' => 'datetimepicker1'
                    )
                )
            )
            ->add('confirmationAgent', EntityType::class, array(
                'class' => 'AppBundle:Agent',
                'choice_label' => 'name',
                'data' => $installation->getConfirmationAgent(),
                'attr' => array(
                    'class' => 'form-control'
                    )
                )
            )
            ->add('siteSpecifics', ChoiceType::class, array(
                'choices' => array(
                    'Select an Option' => null,
                    'Yes' => 'Yes',
                    'No' => 'No'
                    ),
                'attr' => array(
                    'class' => 'form-control'
                    )
                )
            )
            ->add('stepOrdered', ChoiceType::class, array(
                'label' => 'Site Especific Ordered?',
                'choices' => array(
                    'Select an Option' => null,
                    'Yes' => 'Yes',
                    'No' => 'No'
                    ),
                'attr' => array(
                    'class' => 'form-control',
                    )
                )
            )
            ->add('save', SubmitType::class,
                array(
                    'label' => 'Edit Changes Info',
                    'attr' => array(
                        'class' => 'btn btn-success mt-3 pull-right'
                        )
                    )
                )
            ->getForm();

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $installation = $form->getData();

            $modification = new Modification();

            $modification->setUserId($this->getUser()->getUserName());
            $modification->setPlaceChanged('Changes Info');
            $modification->setModificationDate(new \DateTime('now'));
            $modification->setInstallationId($installation->getId());

            $em = $this->getDoctrine()->getManager();
            $em->persist($installation);
            $em->flush();

            $em->persist($modification);
            $em->flush();


            $modifications = $this->getDoctrine()->getRepository('AppBundle:Modification')->getModificationsByInstallationId($installation->getId());
            $userRole = $this->getUser()->getRoleApp();
            $user = $this->getUser()->getUserName();

            return $this->render('Installation/Tables/Info.html.twig',[
                'installation' => $installation,
                'modification' => $modifications,
                'role' => $userRole,
                'user' => $user
                ]
            );
        }

        return $this->render('Installation/Forms/EditInfo.html.twig', array(
            'form' => $form->createView(),
            'installation' => $installation
        ));
    }

    public function editManufacturerInfoAction(Request $request, $id)
    {
        $installation = $this->getDoctrine()->getRepository('AppBundle:Installation')->find($id);
        $installationDateOld = $installation->getInstallationDate();

        $form = $this->createFormBuilder($installation)
            ->add('toManufacturer', DateType::class, array(
                'widget' => 'choice',
                'attr' => array(
                    'class' => 'form-control datepicker',
                    'id' => 'datetimepicker1'
                    )
                )
            )
            ->add('installationCompany', EntityType::class, array(
                'class' => 'AppBundle:Manufacturer',
                'choice_label' => 'name',
                'attr' => array(
                    'class' => 'form-control'
                    )
                )
            )
            ->add('installationStatus',ChoiceType::class, array(
                'choices' => array(
                    'Select an Option' => null,
                    'Installed' => 'Installed',
                    'Pending to install' => 'Pending to install',
                    'Pending' => 'Pending',
                    'Hold' => 'Hold',
                    'Cancelled' => 'Cancelled',
                    ),
                'attr' => array(
                    'class' => 'form-control'
                    )
                )
            )
            ->add('installationDate', DateType::class, array(
                'widget' => 'choice',
                'attr' => array(
                    'class' => 'form-control datepicker',
                    'id' => 'datetimepicker1'
                    )
                )
            )
            ->add('save', SubmitType::class,
                array(
                    'label' => 'Edit Manufacturer Info',
                    'attr' => array(
                        'class' => 'btn btn-success mt-3 pull-right'
                        )
                    )
            )
            ->getForm();

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $installation = $form->getData();

            $manufacturer = $this->getDoctrine()->getRepository('AppBundle:Manufacturer')->find($installation->getInstallationCompany());
            $installation->setInstallationCompany($manufacturer->getName());
            $installation->setmanufacturerNumber($manufacturer->getNumber());
            $installation->setManufacturerEmail($manufacturer->getEmail());
            if ($installationDateOld != $installation->getInstallationDate()) 
            {
                $installation->setInstallationDateSet('Yes');
            }

            $em = $this->getDoctrine()->getManager();
            $em->persist($installation);
            $em->flush();

            $modification = new Modification();

            $modification->setUserId($this->getUser()->getUserName());
            $modification->setPlaceChanged('Manufacturer Info');
            $modification->setModificationDate(new \DateTime('now'));
            $modification->setInstallationId($installation->getId());

            $em->persist($modification);
            $em->flush();

            $modifications = $this->getDoctrine()->getRepository('AppBundle:Modification')->getModificationsByInstallationId($installation->getId());

            $modifications = $this->getDoctrine()->getRepository('AppBundle:Modification')->getModificationsByInstallationId($installation->getId());
            $userRole = $this->getUser()->getRoleApp();
            $user = $this->getUser()->getUserName();

            return $this->render('Installation/Tables/Info.html.twig',[
                'installation' => $installation,
                'modification' => $modifications,
                'role' => $userRole,
                'user' => $user
                ]
            );
        }

        return $this->render('Installation/Forms/EditInfo.html.twig', array(
            'form' => $form->createView(),
            'installation' => $installation
        ));
    }

    public function editManufacturerInfoDashAction(Request $request, $id)
    {
        $installation = $this->getDoctrine()->getRepository('AppBundle:Installation')->find($id);
        $installationDateOld = $installation->getInstallationDate();

        $form = $this->createFormBuilder($installation)
            ->add('toManufacturer', DateType::class, array(
                'widget' => 'choice',
                'attr' => array(
                    'class' => 'form-control datepicker',
                    'id' => 'datetimepicker1'
                    )
                )
            )
            ->add('installationCompany', EntityType::class, array(
                'class' => 'AppBundle:Manufacturer',
                'choice_label' => 'name',
                'attr' => array(
                    'class' => 'form-control'
                    )
                )
            )
            ->add('installationStatus',ChoiceType::class, array(
                'choices' => array(
                    'Select an Option' => null,
                    'Installed' => 'Installed',
                    'Pending to install' => 'Pending to install',
                    'Pending' => 'Pending',
                    'Hold' => 'Hold',
                    'Cancelled' => 'Cancelled',
                    ),
                'attr' => array(
                    'class' => 'form-control'
                    )
                )
            )
            ->add('installationDate', DateType::class, array(
                'widget' => 'choice',
                'attr' => array(
                    'class' => 'form-control datepicker',
                    'id' => 'datetimepicker1'
                    )
                )
            )
            ->add('save', SubmitType::class,
                array(
                    'label' => 'Edit Manufacturer Info',
                    'attr' => array(
                        'class' => 'btn btn-success mt-3 pull-right'
                        )
                    )
            )
            ->getForm();

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $installation = $form->getData();

            $manufacturer = $this->getDoctrine()->getRepository('AppBundle:Manufacturer')->find($installation->getInstallationCompany());
            $installation->setInstallationCompany($manufacturer->getName());
            $installation->setmanufacturerNumber($manufacturer->getNumber());
            $installation->setManufacturerEmail($manufacturer->getEmail());
            $installationDateNew = $installation->getInstallationDate();
            if ($installationDateOld != $installationDateNew ) 
            {
                $installation->setInstallationDateSet('Yes');
            }

            $em = $this->getDoctrine()->getManager();
            $em->persist($installation);
            $em->flush();

            $modification = new Modification();

            $modification->setUserId($this->getUser()->getUserName());
            $modification->setPlaceChanged('Manufacturer Info');
            $modification->setModificationDate(new \DateTime('now'));
            $modification->setInstallationId($installation->getId());

            $em->persist($modification);
            $em->flush();

            $modifications = $this->getDoctrine()->getRepository('AppBundle:Modification')->getModificationsByInstallationId($installation->getId());

            $modifications = $this->getDoctrine()->getRepository('AppBundle:Modification')->getModificationsByInstallationId($installation->getId());
            $userRole = $this->getUser()->getRoleApp();
            $user = $this->getUser()->getUserName();

            return $this->redirectToRoute('show_dashboard');
        }

        return $this->render('Installation/Forms/EditInfo.html.twig', array(
            'form' => $form->createView(),
            'installation' => $installation
        ));
    }

    public function editExtraInfoAction(Request $request, $id)
    {
        $installation = $this->getDoctrine()->getRepository('AppBundle:Installation')->find($id);

        $form = $this->createFormBuilder($installation)
        ->add('linksInfo', TextType::class, array(
            'attr' => array(
                'class' => 'form-control',
                'placeholder' => 'Links Info'
                )
            )
        )
        ->add('reviewLink',ChoiceType::class, array(
            'choices' => array(
                'Select an Option' => null,
                'Sent' => 'Sent',
                'Left Review' => 'Left Review',
                ),
            'attr' => array(
                'class' => 'form-control'
                )
            )
        )
        ->add('notes', TextareaType::class, array(
            'attr' => array(
                'class' => 'form-control',
                'placeholder' => 'Notes'
                )
            )
        )
        ->add('save', SubmitType::class, array(
                'label' => 'Edit Extra Info',
                'attr' => array(
                    'class' => 'btn btn-success mt-3 pull-right'
                    )
                )
        )
            ->getForm();

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $installation = $form->getData();

            $layout = $this->getDoctrine()->getRepository('AppBundle:Layout')->findLayout($installation->getId());

            $roleApp = $this->getUser()->getRoleApp();
            $user = $this->getUser()->getUserName();

            $modification = new Modification();

            $modification->setUserId($this->getUser()->getUserName());
            $modification->setPlaceChanged('Extra Info');
            $modification->setModificationDate(new \DateTime('now'));
            $modification->setInstallationId($installation->getId());

            $em = $this->getDoctrine()->getManager();
            $em->persist($installation);
            $em->flush();

            $em->persist($modification);
            $em->flush();

            return $this->render('Installation/Tables/Info.html.twig',[
                'installation' => $installation,
                'modification' => $modification,
                'role' => $roleApp,
                'user' => $user,
                'layout' => $layout
                ]
            );
        }

        return $this->render('Installation/Forms/EditInfo.html.twig', array(
            'form' => $form->createView(),
            'installation' => $installation
        ));
    }

    public function changeHotNotAction($id)
    {
        $installation = $this->getDoctrine()->getRepository('AppBundle:Installation')->find($id);

        $installation->setHotStatus('No');

        $em = $this->getDoctrine()->getManager();
        $em->persist($installation);
        $em->flush();

        $layout = $this->getDoctrine()->getRepository('AppBundle:Layout')->findLayout($installation->getId());

        $roleApp = $this->getUser()->getRoleApp();
        $user = $this->getUser()->getUserName();

        $modification = new Modification();
        
        $modification->setUserId($this->getUser()->getUserName());
        $modification->setInstallationId($installation->getId());
        $modification->setPlaceChanged('Hot Status to No');
        $modification->setModificationDate(new \DateTime('now'));

        $em->persist($modification);
        $em->flush();

        return $this->render('Installation/Tables/Info.html.twig',[
            'installation' => $installation,
            'modification' => $modification,
            'role' => $roleApp,
            'user' => $user,
            'layout' => $layout
            ]
        );
    }

    public function changeHotYesAction($id)
    {
        $installation = $this->getDoctrine()->getRepository('AppBundle:Installation')->find($id);

        $installation->setHotStatus('Yes');

        $em = $this->getDoctrine()->getManager();
        $em->persist($installation);
        $em->flush();

        $layout = $this->getDoctrine()->getRepository('AppBundle:Layout')->findLayout($installation->getId());

        $roleApp = $this->getUser()->getRoleApp();
        $user = $this->getUser()->getUserName();

        $modification = new Modification();
        
        $modification->setUserId($this->getUser()->getUserName());
        $modification->setInstallationId($installation->getId());
        $modification->setPlaceChanged('Hot Status to Yes');
        $modification->setModificationDate(new \DateTime('now'));

        $em->persist($modification);
        $em->flush();

        return $this->render('Installation/Tables/Info.html.twig',[
            'installation' => $installation,
            'modification' => $modification,
            'role' => $roleApp,
            'user' => $user,
            'layout' => $layout
            ]
        );
    }

    public function changeStatusInstalledAction($id)
    {
        $installation = $this->getDoctrine()->getRepository('AppBundle:Installation')->find($id);

        $installation->setInstallationStatus('Installed');
        $installation->setHotStatus('No');

        $em = $this->getDoctrine()->getManager();
        $em->persist($installation);
        $em->flush();

        $layout = $this->getDoctrine()->getRepository('AppBundle:Layout')->findLayout($installation->getId());
        
        $roleApp = $this->getUser()->getRoleApp();
        $user = $this->getUser()->getUserName();

        $modification = new Modification();

        $modification->setUserId($this->getUser()->getUserName());
        $modification->setInstallationId($installation->getId());
        $modification->setPlaceChanged('Status to Installed');
        $modification->setModificationDate(new \DateTime('now'));

        $em->persist($modification);
        $em->flush();

        return $this->render('Installation/Tables/Info.html.twig',[
            'installation' => $installation,
            'modification' => $modification,
            'role' => $roleApp,
            'user' => $user,
            'layout' => $layout
            ]
        );
    }

    public function changeStatusPendingAction($id)
    {
        $installation = $this->getDoctrine()->getRepository('AppBundle:Installation')->find($id);

        $installation->setInstallationStatus('Pending');
        $installation->setInstallationDateSet('No');

        $em = $this->getDoctrine()->getManager();
        $em->persist($installation);
        $em->flush();

        $layout = $this->getDoctrine()->getRepository('AppBundle:Layout')->findLayout($installation->getId());
        
        $roleApp = $this->getUser()->getRoleApp();
        $user = $this->getUser()->getUserName();

        $modification = new Modification();

        $modification->setUserId($this->getUser()->getUserName());
        $modification->setInstallationId($installation->getId());
        $modification->setPlaceChanged('Status to Pending');
        $modification->setModificationDate(new \DateTime('now'));

        $em->persist($modification);
        $em->flush();

        return $this->render('Installation/Tables/Info.html.twig',[
            'installation' => $installation,
            'modification' => $modification,
            'role' => $roleApp,
            'user' => $user,
            'layout' => $layout
            ]
        );
    }

    public function changeStatusCancelledAction($id)
    {
        $installation = $this->getDoctrine()->getRepository('AppBundle:Installation')->find($id);

        $installation->setInstallationStatus('Cancelled');

        $em = $this->getDoctrine()->getManager();
        $em->persist($installation);
        $em->flush();

        $layout = $this->getDoctrine()->getRepository('AppBundle:Layout')->findLayout($installation->getId());
        
        $roleApp = $this->getUser()->getRoleApp();
        $user = $this->getUser()->getUserName();

        $modification = new Modification();

        $modification->setUserId($this->getUser()->getUserName());
        $modification->setInstallationId($installation->getId());
        $modification->setPlaceChanged('Status to Cancelled');
        $modification->setModificationDate(new \DateTime('now'));

        $em->persist($modification);
        $em->flush();

        return $this->render('Installation/Tables/Info.html.twig',[
            'installation' => $installation,
            'modification' => $modification,
            'role' => $roleApp,
            'user' => $user,
            'layout' => $layout
            ]
        );
    }

    public function changeStatusHoldAction($id)
    {
        $installation = $this->getDoctrine()->getRepository('AppBundle:Installation')->find($id);

        $installation->setInstallationStatus('Hold');

        $em = $this->getDoctrine()->getManager();
        $em->persist($installation);
        $em->flush();

        $layout = $this->getDoctrine()->getRepository('AppBundle:Layout')->findLayout($installation->getId());
        
        $roleApp = $this->getUser()->getRoleApp();
        $user = $this->getUser()->getUserName();

        $modification = new Modification();

        $modification->setUserId($this->getUser()->getUserName());
        $modification->setInstallationId($installation->getId());
        $modification->setPlaceChanged('Status to Hold');
        $modification->setModificationDate(new \DateTime('now'));

        $em->persist($modification);
        $em->flush();

        return $this->render('Installation/Tables/Info.html.twig',[
            'installation' => $installation,
            'modification' => $modification,
            'role' => $roleApp,
            'user' => $user,
            'layout' => $layout
            ]
        );   
    }

    public function changeStatusPendingInstallAction($id)
    {
        $installation = $this->getDoctrine()->getRepository('AppBundle:Installation')->find($id);

        $installation->setInstallationStatus('Pending to Install');

        $em = $this->getDoctrine()->getManager();
        $em->persist($installation);
        $em->flush();

        $layout = $this->getDoctrine()->getRepository('AppBundle:Layout')->findLayout($installation->getId());
        
        $roleApp = $this->getUser()->getRoleApp();
        $user = $this->getUser()->getUserName();

        $modification = new Modification();

        $modification->setUserId($this->getUser()->getUserName());
        $modification->setInstallationId($installation->getId());
        $modification->setPlaceChanged('Status to Pending to Install');
        $modification->setModificationDate(new \DateTime('now'));

        $em->persist($modification);
        $em->flush();

        return $this->render('Installation/Tables/Info.html.twig',[
            'installation' => $installation,
            'modification' => $modification,
            'role' => $roleApp,
            'user' => $user,
            'layout' => $layout
            ]
        );
    }

}   
