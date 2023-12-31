<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Installation
 *
 * @ORM\Table(name="installation")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\InstallationRepository")
 */
class Installation
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="customer_name", type="string", length=255)
     */
    private $customerName;

    /**
     * @var string
     *
     * @ORM\Column(name="customer_phone", type="string", length=255, nullable=true)
     */
    private $customerPhone;

    /**
     * @var string
     *
     * @ORM\Column(name="customer_email", type="string", length=255)
     */
    private $customerEmail;

    /**
     * @var string
     *
     * @ORM\Column(name="installation_address", type="string", length=255)
     */
    private $installationAddress;

    /**
     * @var string
     *
     * @ORM\Column(name="city", type="string", length=255)
     */
    private $city;

    /**
     * @var string
     *
     * @ORM\Column(name="state", type="string", length=255)
     */
    private $state;

    /**
     * @var string
     *
     * @ORM\Column(name="zip_code", type="string", length=255)
     */
    private $zipCode;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="text")
     */
    private $description;

    /**
     * @var string
     *
     * @ORM\Column(name="sales_owner", type="string", length=255, nullable=true)
     * @ORM\ManyToOne(targetEntity="Agent")
     */
    private $salesOwner;

    /**
     * @var string
     *
     * @ORM\Column(name="sales_caller", type="string", length=255, nullable=true)
     * @ORM\ManyToOne(targetEntity="Agent")
     */
    private $salesCaller;

    /**
     * @var float
     *
     * @ORM\Column(name="building_pi_taxes", type="float", nullable=true)
     */
    private $buildingPiTaxes;

    /**
     * @var float
     *
     * @ORM\Column(name="price_no_taxes", type="float", nullable=true)
     */
    private $priceNtax;

    /**
     * @var float
     *
     * @ORM\Column(name="downpayment", type="float", nullable=true)
     */
    private $downpayment;

    /**
     * @var string
     *
     * @ORM\Column(name="dp_method", type="string", length=255, nullable=true)
     */
    private $dpMethod;

    /**
     * @var \Date
     *
     * @ORM\Column(name="dp_date", type="date", nullable=true)
     */
    private $dpDate;

    /**
     * @var float
     *
     * @ORM\Column(name="payment2", type="float", nullable=true)
     */
    private $payment2;

    /**
     * @var string
     *
     * @ORM\Column(name="payment2_method", type="string", length=255, nullable=true)
     */
    private $payment2Method;

    /**
     * @var \Date
     *
     * @ORM\Column(name="payment2_date", type="date", nullable=true)
     */
    private $payment2Date;

    /**
     * @var float
     *
     * @ORM\Column(name="balance_du_installation", type="float", nullable=true)
     */
    private $balanceDuInstallation;

    /**
     * @var string
     *
     * @ORM\Column(name="financed", type="string", length=255, nullable=true)
     */
    private $financed;

    /**
     * @var string
     *
     * @ORM\Column(name="financing_company", type="string", length=255, nullable=true)
     */
    private $financingCompany;

    /**
     * @var string
     *
     * @ORM\Column(name="financing_other", type="string", length=255, nullable=true)
     */
    private $financingOther;

    /**
     * @var \Date
     *
     * @ORM\Column(name="added_lead", type="date", nullable=true)
     */
    private $addedLead;

    /**
     * @var \Date
     *
     * @ORM\Column(name="quoted", type="date", nullable=true)
     */
    private $quoted;

    /**
     * @var \Date
     *
     * @ORM\Column(name="contract_signed", type="date", nullable=true)
     */
    private $contractSigned;

    /**
     * @var string
     *
     * @ORM\Column(name="notes_sensei", type="string", length=255, nullable=true)
     */
    private $notesSensei;

    /**
     * @var string
     *
     * @ORM\Column(name="quote_number", type="string", length=255, nullable=true)
     */
    private $quoteNumber;

    /**
     * @var string
     *
     * @ORM\Column(name="order_number", type="string", length=255, nullable=true)
     */
    private $orderNumber;

    /**
     * @var string
     *
     * @ORM\Column(name="invoice_number", type="string", length=255, nullable=true)
     */
    private $invoiceNumber;

    /**
     * @var string
     *
     * @ORM\Column(name="calls_before_payments", type="string", length=255, nullable=true)
     */
    private $callsBeforePayments;

    /**
     * @var string
     *
     * @ORM\Column(name="texts_before_payments", type="string", length=255, nullable=true)
     */
    private $textsBeforePayments;

    /**
     * @var string
     *
     * @ORM\Column(name="any_changes", type="string", length=255, nullable=true)
     */
    private $anyChanges;

    /**
     * @var \Date
     *
     * @ORM\Column(name="order_confirmation", type="date", nullable=true)
     */
    private $orderConfirmation;

    /**
     * @var string
     *
     * @ORM\Column(name="confirmation_agent", type="string", nullable=true)
     */
    private $confirmationAgent;

    /**
     * @var \Date
     *
     * @ORM\Column(name="to_manufacturer", type="date", nullable=true)
     */
    private $toManufacturer;

    /**
     * @var int
     *
     * @ORM\Column(name="installation_company", type="string", length=255, nullable=true)
     * @ORM\ManyToOne(targetEntity="Manufacturer")
     */
    private $installationCompany;

    /**
     * @var int
     *
     * @ORM\Column(name="manufacturer_number", type="bigint", nullable=true)
     */
    private $manufacturerNumber;

    /**
     * @var string
     *
     * @ORM\Column(name="manufacturer_email", type="string", length=255, nullable=true)
     */
    private $manufacturerEmail;

    /**
     * @var string
     *
     * @ORM\Column(name="installation_status", type="string", length=255, nullable=true)
     */
    private $installationStatus;

    /**
     * @var \Date
     *
     * @ORM\Column(name="installation_date", type="date", nullable=true)
     */
    private $installationDate;

    /**
     * @var string
     *
     * @ORM\Column(name="days_customer", type="string", length=255, nullable=true)
     */
    private $daysCustomer;

    /**
     * @var string
     *
     * @ORM\Column(name="days_install", type="string", length=255, nullable=true)
     */
    private $daysInstall;

    /**
     * @var string
     *
     * @ORM\Column(name="links_info", type="text", nullable=true)
     */
    private $linksInfo;

    /**
     * @var string
     *
     * @ORM\Column(name="review_link", type="string", length=255, nullable=true)
     */
    private $reviewLink;

    /**
     * @var string
     *
     * @ORM\Column(name="notes", type="text", nullable=true)
     */
    private $notes;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="register_created", type="date")
     */
    private $registerCreated;

    /**
     * @var string
     *
     * @ORM\Column(name="hot_status", type="string", nullable=true)
     */
    private $hotStatus;

    /**
     * @var string
     *
     * @ORM\Column(name="last_update", type="string", nullable=true)
     */
    private $lastUpdate;

    /**
     * @var string
     *
     * @ORM\Column(name="site_specifics", type="string", nullable=true)
     */
    private $siteSpecifics;

    /**
     * @var string
     *
     * @ORM\Column(name="created_by", type="string", nullable=true)
     */
    private $createdBy;

    /**
     * @var string
     *
     * @ORM\Column(name="step_ordered", type="string", nullable=true)
     */
    private $stepOrdered;
    
    /**
     * @var string
     *
     * @ORM\Column(name="installation_date_set", type="string", nullable=true)
     */
    private $installationDateSet;

     /**
     * @var string
     *
     * @ORM\Column(name="confirmation_date_set", type="string", nullable=true)
     */
    private $confirmationDateSet;

    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set customerName
     *
     * @param string $customerName
     *
     * @return Installation
     */
    public function setCustomerName($customerName)
    {
        $this->customerName = $customerName;

        return $this;
    }

    /**
     * Get customerName
     *
     * @return string
     */
    public function getCustomerName()
    {
        return $this->customerName;
    }

    /**
     * Set customerPhone
     *
     * @param string $customerPhone
     *
     * @return Installation
     */
    public function setCustomerPhone($customerPhone)
    {
        $this->customerPhone = $customerPhone;

        return $this;
    }

    /**
     * Get customerPhone
     *
     * @return string
     */
    public function getCustomerPhone()
    {
        return $this->customerPhone;
    }

    /**
     * Set customerEmail
     *
     * @param string $customerEmail
     *
     * @return Installation
     */
    public function setCustomerEmail($customerEmail)
    {
        $this->customerEmail = $customerEmail;

        return $this;
    }

    /**
     * Get customerEmail
     *
     * @return string
     */
    public function getCustomerEmail()
    {
        return $this->customerEmail;
    }

    /**
     * Set installationAddress
     *
     * @param string $installationAddress
     *
     * @return Installation
     */
    public function setInstallationAddress($installationAddress)
    {
        $this->installationAddress = $installationAddress;

        return $this;
    }

    /**
     * Get installationAddress
     *
     * @return string
     */
    public function getInstallationAddress()
    {
        return $this->installationAddress;
    }

    /**
     * Set city
     *
     * @param string $city
     *
     * @return Installation
     */
    public function setCity($city)
    {
        $this->city = $city;

        return $this;
    }

    /**
     * Get city
     *
     * @return string
     */
    public function getCity()
    {
        return $this->city;
    }

    /**
     * Set state
     *
     * @param string $state
     *
     * @return Installation
     */
    public function setState($state)
    {
        $this->state = $state;

        return $this;
    }

    /**
     * Get state
     *
     * @return string
     */
    public function getState()
    {
        return $this->state;
    }

    /**
     * Set zipCode
     *
     * @param string $zipCode
     *
     * @return Installation
     */
    public function setZipCode($zipCode)
    {
        $this->zipCode = $zipCode;

        return $this;
    }

    /**
     * Get zipCode
     *
     * @return string
     */
    public function getZipCode()
    {
        return $this->zipCode;
    }

    /**
     * Set description
     *
     * @param string $description
     *
     * @return Installation
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description
     *
     * @return string
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set salesOwner
     *
     * @param string $salesOwner
     *
     * @return Installation
     */
    public function setSalesOwner($salesOwner)
    {
        $this->salesOwner = $salesOwner;

        return $this;
    }

    /**
     * Get salesOwner
     *
     * @return string
     */
    public function getSalesOwner()
    {
        return $this->salesOwner;
    }

    /**
     * Set salesCaller
     *
     * @param string $salesCaller
     *
     * @return Installation
     */
    public function setSalesCaller($salesCaller)
    {
        $this->salesCaller = $salesCaller;

        return $this;
    }

    /**
     * Get salesCaller
     *
     * @return string
     */
    public function getSalesCaller()
    {
        return $this->salesCaller;
    }

    /**
     * Set buildingPiTaxes
     *
     * @param float $buildingPiTaxes
     *
     * @return Installation
     */
    public function setBuildingPiTaxes($buildingPiTaxes)
    {
        $this->buildingPiTaxes = $buildingPiTaxes;

        return $this;
    }

    /**
     * Get buildingPiTaxes
     *
     * @return float
     */
    public function getBuildingPiTaxes()
    {
        return $this->buildingPiTaxes;
    }

    /**
     * Set downpayment
     *
     * @param float $downpayment
     *
     * @return Installation
     */
    public function setDownpayment($downpayment)
    {
        $this->downpayment = $downpayment;

        return $this;
    }

    /**
     * Get downpayment
     *
     * @return float
     */
    public function getDownpayment()
    {
        return $this->downpayment;
    }

    /**
     * Set dpMethod
     *
     * @param string $dpMethod
     *
     * @return Installation
     */
    public function setDpMethod($dpMethod)
    {
        $this->dpMethod = $dpMethod;

        return $this;
    }

    /**
     * Get dpMethod
     *
     * @return string
     */
    public function getDpMethod()
    {
        return $this->dpMethod;
    }

    /**
     * Set dpDate
     *
     * @param \DateTime $dpDate
     *
     * @return Installation
     */
    public function setDpDate($dpDate)
    {
        $this->dpDate = $dpDate;

        return $this;
    }

    /**
     * Get dpDate
     *
     * @return \DateTime
     */
    public function getDpDate()
    {
        return $this->dpDate;
    }

    /**
     * Set payment2
     *
     * @param float $payment2
     *
     * @return Installation
     */
    public function setPayment2($payment2)
    {
        $this->payment2 = $payment2;

        return $this;
    }

    /**
     * Get payment2
     *
     * @return float
     */
    public function getPayment2()
    {
        return $this->payment2;
    }

    /**
     * Set payment2Method
     *
     * @param string $payment2Method
     *
     * @return Installation
     */
    public function setPayment2Method($payment2Method)
    {
        $this->payment2Method = $payment2Method;

        return $this;
    }

    /**
     * Get payment2Method
     *
     * @return string
     */
    public function getPayment2Method()
    {
        return $this->payment2Method;
    }

    /**
     * Set payment2Date
     *
     * @param \DateTime $payment2Date
     *
     * @return Installation
     */
    public function setPayment2Date($payment2Date)
    {
        $this->payment2Date = $payment2Date;

        return $this;
    }

    /**
     * Get payment2Date
     *
     * @return \DateTime
     */
    public function getPayment2Date()
    {
        return $this->payment2Date;
    }

    /**
     * Set balanceDuInstallation
     *
     * @param float $balanceDuInstallation
     *
     * @return Installation
     */
    public function setBalanceDuInstallation($balanceDuInstallation)
    {
        $this->balanceDuInstallation = $balanceDuInstallation;

        return $this;
    }

    /**
     * Get balanceDuInstallation
     *
     * @return float
     */
    public function getBalanceDuInstallation()
    {
        return $this->balanceDuInstallation;
    }

    /**
     * Set addedLead
     *
     * @param \DateTime $addedLead
     *
     * @return Installation
     */
    public function setAddedLead($addedLead)
    {
        $this->addedLead = $addedLead;

        return $this;
    }

    /**
     * Get addedLead
     *
     * @return \DateTime
     */
    public function getAddedLead()
    {
        return $this->addedLead;
    }

    /**
     * Set quoted
     *
     * @param \DateTime $quoted
     *
     * @return Installation
     */
    public function setQuoted($quoted)
    {
        $this->quoted = $quoted;

        return $this;
    }

    /**
     * Get quoted
     *
     * @return \DateTime
     */
    public function getQuoted()
    {
        return $this->quoted;
    }

    /**
     * Set contractSigned
     *
     * @param \DateTime $contractSigned
     *
     * @return Installation
     */
    public function setContractSigned($contractSigned)
    {
        $this->contractSigned = $contractSigned;

        return $this;
    }

    /**
     * Get contractSigned
     *
     * @return \DateTime
     */
    public function getContractSigned()
    {
        return $this->contractSigned;
    }

    /**
     * Set notesSensei
     *
     * @param string $notesSensei
     *
     * @return Installation
     */
    public function setNotesSensei($notesSensei)
    {
        $this->notesSensei = $notesSensei;

        return $this;
    }

    /**
     * Get notesSensei
     *
     * @return string
     */
    public function getNotesSensei()
    {
        return $this->notesSensei;
    }

    /**
     * Set quoteNumber
     *
     * @param string $quoteNumber
     *
     * @return Installation
     */
    public function setQuoteNumber($quoteNumber)
    {
        $this->quoteNumber = $quoteNumber;

        return $this;
    }

    /**
     * Get quoteNumber
     *
     * @return string
     */
    public function getQuoteNumber()
    {
        return $this->quoteNumber;
    }

    /**
     * Set orderNumber
     *
     * @param string $orderNumber
     *
     * @return Installation
     */
    public function setOrderNumber($orderNumber)
    {
        $this->orderNumber = $orderNumber;

        return $this;
    }

    /**
     * Get orderNumber
     *
     * @return string
     */
    public function getOrderNumber()
    {
        return $this->orderNumber;
    }

    /**
     * Set invoiceNumber
     *
     * @param string $invoiceNumber
     *
     * @return Installation
     */
    public function setInvoiceNumber($invoiceNumber)
    {
        $this->invoiceNumber = $invoiceNumber;

        return $this;
    }

    /**
     * Get invoiceNumber
     *
     * @return string
     */
    public function getInvoiceNumber()
    {
        return $this->invoiceNumber;
    }

    /**
     * Set callsBeforePayments
     *
     * @param string $callsBeforePayments
     *
     * @return Installation
     */
    public function setCallsBeforePayments($callsBeforePayments)
    {
        $this->callsBeforePayments = $callsBeforePayments;

        return $this;
    }

    /**
     * Get callsBeforePayments
     *
     * @return string
     */
    public function getCallsBeforePayments()
    {
        return $this->callsBeforePayments;
    }

    /**
     * Set textsBeforePayments
     *
     * @param string $textsBeforePayments
     *
     * @return Installation
     */
    public function setTextsBeforePayments($textsBeforePayments)
    {
        $this->textsBeforePayments = $textsBeforePayments;

        return $this;
    }

    /**
     * Get textsBeforePayments
     *
     * @return string
     */
    public function getTextsBeforePayments()
    {
        return $this->textsBeforePayments;
    }

    /**
     * Set anyChanges
     *
     * @param string $anyChanges
     *
     * @return Installation
     */
    public function setAnyChanges($anyChanges)
    {
        $this->anyChanges = $anyChanges;

        return $this;
    }

    /**
     * Get anyChanges
     *
     * @return string
     */
    public function getAnyChanges()
    {
        return $this->anyChanges;
    }

    /**
     * Set orderConfirmation
     *
     * @param \DateTime $orderConfirmation
     *
     * @return Installation
     */
    public function setOrderConfirmation($orderConfirmation)
    {
        $this->orderConfirmation = $orderConfirmation;

        return $this;
    }

    /**
     * Get orderConfirmation
     *
     * @return \DateTime
     */
    public function getOrderConfirmation()
    {
        return $this->orderConfirmation;
    }

    /**
     * Set confirmationAgent
     *
     * @param \DateTime $confirmationAgent
     *
     * @return Installation
     */
    public function setConfirmationAgent($confirmationAgent)
    {
        $this->confirmationAgent = $confirmationAgent;

        return $this;
    }

    /**
     * Get confirmationAgent
     *
     * @return \DateTime
     */
    public function getConfirmationAgent()
    {
        return $this->confirmationAgent;
    }

    /**
     * Set toManufacturer
     *
     * @param \DateTime $toManufacturer
     *
     * @return Installation
     */
    public function setToManufacturer($toManufacturer)
    {
        $this->toManufacturer = $toManufacturer;

        return $this;
    }

    /**
     * Get toManufacturer
     *
     * @return \DateTime
     */
    public function getToManufacturer()
    {
        return $this->toManufacturer;
    }

    /**
     * Set installationCompany
     *
     * @param integer $installationCompany
     *
     * @return Installation
     */
    public function setInstallationCompany($installationCompany)
    {
        $this->installationCompany = $installationCompany;

        return $this;
    }

    /**
     * Get installationCompany
     *
     * @return int
     */
    public function getInstallationCompany()
    {
        return $this->installationCompany;
    }

    /**
     * Set manufacturerNumber
     *
     * @param integer $manufacturerNumber
     *
     * @return Installation
     */
    public function setManufacturerNumber($manufacturerNumber)
    {
        $this->manufacturerNumber = $manufacturerNumber;

        return $this;
    }

    /**
     * Get manufacturerNumber
     *
     * @return int
     */
    public function getManufacturerNumber()
    {
        return $this->manufacturerNumber;
    }

    /**
     * Set manufacturerEmail
     *
     * @param string $manufacturerEmail
     *
     * @return Installation
     */
    public function setManufacturerEmail($manufacturerEmail)
    {
        $this->manufacturerEmail = $manufacturerEmail;

        return $this;
    }

    /**
     * Get manufacturerEmail
     *
     * @return string
     */
    public function getManufacturerEmail()
    {
        return $this->manufacturerEmail;
    }

    /**
     * Set installationStatus
     *
     * @param string $installationStatus
     *
     * @return Installation
     */
    public function setInstallationStatus($installationStatus)
    {
        $this->installationStatus = $installationStatus;

        return $this;
    }

    /**
     * Get installationStatus
     *
     * @return string
     */
    public function getInstallationStatus()
    {
        return $this->installationStatus;
    }

    /**
     * Set installationDate
     *
     * @param \DateTime $installationDate
     *
     * @return Installation
     */
    public function setInstallationDate($installationDate)
    {
        $this->installationDate = $installationDate;

        return $this;
    }

    /**
     * Get installationDate
     *
     * @return \DateTime
     */
    public function getInstallationDate()
    {
        return $this->installationDate;
    }

    /**
     * Set daysCustomer
     *
     * @param string $daysCustomer
     *
     * @return Installation
     */
    public function setDaysCustomer($daysCustomer)
    {
        $this->daysCustomer = $daysCustomer;

        return $this;
    }

    /**
     * Get daysCustomer
     *
     * @return string
     */
    public function getDaysCustomer()
    {
        return $this->daysCustomer;
    }

    /**
     * Set daysInstall
     *
     * @param string $daysInstall
     *
     * @return Installation
     */
    public function setDaysInstall($daysInstall)
    {
        $this->daysInstall = $daysInstall;

        return $this;
    }

    /**
     * Get daysInstall
     *
     * @return string
     */
    public function getDaysInstall()
    {
        return $this->daysInstall;
    }

    /**
     * Set linksInfo
     *
     * @param string $linksInfo
     *
     * @return Installation
     */
    public function setLinksInfo($linksInfo)
    {
        $this->linksInfo = $linksInfo;

        return $this;
    }

    /**
     * Get linksInfo
     *
     * @return string
     */
    public function getLinksInfo()
    {
        return $this->linksInfo;
    }

    /**
     * Set reviewLink
     *
     * @param string $reviewLink
     *
     * @return Installation
     */
    public function setReviewLink($reviewLink)
    {
        $this->reviewLink = $reviewLink;

        return $this;
    }

    /**
     * Get reviewLink
     *
     * @return string
     */
    public function getReviewLink()
    {
        return $this->reviewLink;
    }

    /**
     * Set notes
     *
     * @param string $notes
     *
     * @return Installation
     */
    public function setNotes($notes)
    {
        $this->notes = $notes;

        return $this;
    }

    /**
     * Get notes
     *
     * @return string
     */
    public function getNotes()
    {
        return $this->notes;
    }

    /**
     * Set registerCreated
     *
     * @param \DateTime $registerCreated
     *
     * @return Installation
     */
    public function setRegisterCreated($registerCreated)
    {
        $this->registerCreated = $registerCreated;

        return $this;
    }

    /**
     * Get registerCreated
     *
     * @return \DateTime
     */
    public function getRegisterCreated()
    {
        return $this->registerCreated;
    }

    /**
     * Set priceNtax
     *
     * @param float $priceNtax
     *
     * @return Installation
     */
    public function setPriceNtax($priceNtax)
    {
        $this->priceNtax = $priceNtax;

        return $this;
    }

    /**
     * Get priceNtax
     *
     * @return float
     */
    public function getPriceNtax()
    {
        return $this->priceNtax;
    }

    /**
     * Set financed
     *
     * @param string $financed
     *
     * @return Installation
     */
    public function setFinanced($financed)
    {
        $this->financed = $financed;

        return $this;
    }

    /**
     * Get financed
     *
     * @return string
     */
    public function getFinanced()
    {
        return $this->financed;
    }

    /**
     * Set financingCompany
     *
     * @param string $financingCompany
     *
     * @return Installation
     */
    public function setFinancingCompany($financingCompany)
    {
        $this->financingCompany = $financingCompany;

        return $this;
    }

    /**
     * Get financingCompany
     *
     * @return string
     */
    public function getFinancingCompany()
    {
        return $this->financingCompany;
    }

    /**
     * Set financingOther
     *
     * @param string $financingOther
     *
     * @return Installation
     */
    public function setFinancingOther($financingOther)
    {
        $this->financingOther = $financingOther;

        return $this;
    }

    /**
     * Get financingOther
     *
     * @return string
     */
    public function getFinancingOther()
    {
        return $this->financingOther;
    }

    /**
     * Set hotStatus
     *
     * @param string $hotStatus
     *
     * @return Installation
     */
    public function setHotStatus($hotStatus)
    {
        $this->hotStatus = $hotStatus;

        return $this;
    }

    /**
     * Get hotStatus
     *
     * @return string
     */
    public function getHotStatus()
    {
        return $this->hotStatus;
    }

    /**
     * Set lastUpdate
     *
     * @param string $lastUpdate
     *
     * @return Installation
     */
    public function setLastUpdate($lastUpdate)
    {
        $this->lastUpdate = $lastUpdate;

        return $this;
    }

    /**
     * Get lastUpdate
     *
     * @return string
     */
    public function getLastUpdate()
    {
        return $this->lastUpdate;
    }

    /**
     * Set siteSpecifics
     *
     * @param string $siteSpecifics
     *
     * @return Installation
     */
    public function setSiteSpecifics($siteSpecifics)
    {
        $this->siteSpecifics = $siteSpecifics;

        return $this;
    }

    /**
     * Get siteSpecifics
     *
     * @return string
     */
    public function getSiteSpecifics()
    {
        return $this->siteSpecifics;
    }

    /**
     * Set createdBy
     *
     * @param string $createdBy
     *
     * @return Installation
     */
    public function setCreatedBy($createdBy)
    {
        $this->createdBy = $createdBy;

        return $this;
    }

    /**
     * Get createdBy
     *
     * @return string
     */
    public function getCreatedBy()
    {
        return $this->createdBy;
    }

    /**
     * Set stepOrdered
     *
     * @param string $stepOrdered
     *
     * @return Installation
     */
    public function setStepOrdered($stepOrdered)
    {
        $this->stepOrdered = $stepOrdered;

        return $this;
    }

    /**
     * Get stepOrdered
     *
     * @return string
     */
    public function getStepOrdered()
    {
        return $this->stepOrdered;
    }

    /**
     * Set installationDateSet
     *
     * @param string $installationDateSet
     *
     * @return Installation
     */
    public function setInstallationDateSet($installationDateSet)
    {
        $this->installationDateSet = $installationDateSet;

        return $this;
    }

    /**
     * Get installationDateSet
     *
     * @return string
     */
    public function getInstallationDateSet()
    {
        return $this->installationDateSet;
    }

    /**
     * Set confirmationDateSet
     *
     * @param string $confirmationDateSet
     *
     * @return Installation
     */
    public function setConfirmationDateSet($confirmationDateSet)
    {
        $this->confirmationDateSet = $confirmationDateSet;

        return $this;
    }

    /**
     * Get confirmationDateSet
     *
     * @return string
     */
    public function getConfirmationDateSet()
    {
        return $this->confirmationDateSet;
    }
}
