<?php

use offlex\mailers\UserMailer;
use offlex\mailers\ContactMailer;

class InvoiceEventHandler
{
	protected $userMailer;
	protected $contactMailer;

	public function __construct(UserMailer $userMailer, ContactMailer $contactMailer)
	{
		$this->userMailer = $userMailer;
		$this->contactMailer = $contactMailer;
	}	

	public function subscribe($events)
	{
		$events->listen('invoice.sent', 'InvoiceEventHandler@onSent');
		$events->listen('invoice.viewed', 'InvoiceEventHandler@onViewed');
		$events->listen('invoice.paid', 'InvoiceEventHandler@onPaid');
	}

	public function onSent($invoice)
	{
		$this->sendNotifications($invoice, 'sent');
	}

	public function onViewed($invoice)
	{
		$this->sendNotifications($invoice, 'viewed');
	}

	public function onPaid($payment)
	{
		$this->contactMailer->sendPaymentConfirmation($payment);

		$this->sendNotifications($payment->invoice, 'paid', $payment);		
	}

	private function sendNotifications($invoice, $type, $payment = null)
	{
		//Only sending to main account
		$account = $invoice->account;
		$this->userMailer->sendNotificationToMyself($account, $invoice, $type, $payment);
	}
}