<?php

namespace AppBundle\Form\Type;

use AppBundle\Entity\Member;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\RepeatedType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;


class MemberType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('username', TextType::class,[
                    'attr' => [
                        'placeholder' => 'Username',
                        'class' => 'form-control label-login space-t form-signin'
                    ]
                ]
            )
            ->add('email', EmailType::class, [
                    'attr' => [
                        'placeholder' => 'Email',
                        'class' => 'form-control label-login space-t form-signin'
                    ]
                ]
            )
            ->add('plainPassword', RepeatedType::class, [
                'type' => PasswordType::class,
                'first_options' => [
                    'attr' => [
                        'placeholder' => 'Password',
                        'class' => 'form-control label-login space-t form-signin'
                    ],
                    'label' => 'Password'
                ],
                'second_options' => [
                    'attr' => [
                        'placeholder' => 'Repeat Password',
                        'class' => 'form-control label-login space-t form-signin'
                    ],
                    'label' => 'Repeat Password'
                ],
                'attr'=> [
                    'class' => 'form-control label-login space-t form-signin'
                ]
            ]
)
            ->add('register', SubmitType::class,
                [
                    'attr' => [
                        'class' => 'btn btn-success btn-flat pull-center space-t'
                    ]
                ]);


    }
    /**
     * {@inheritdoc}
     * @throws \Symfony\Component\OptionsResolver\Exception\AccessException
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Member::class,
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_member';
    }


}
