<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\HiddenType;
use Doctrine\Common\Collections\ArrayCollection;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;

use AppBundle\Entity\Contact;


class ContactType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
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
            ->add('number', CollectionType::class, [
                    'entry_type' => NumberType::class,
                    'allow_add' => true,
                    'allow_delete' => true,
                    'by_reference' => false,
                    ]
                )
            ->add('save', SubmitType::class, [
                    'attr' => [
                        'class' => 'btn btn-success pull-right',
                    ]
                ]
            );
    }/**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Contact'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_contact';
    }


}
