<?php

use offlex\repositories\AccountRepository;
use offlex\mailers\UserMailer;
use offlex\mailers\ContactMailer;

class AccountController extends \BaseController
{
    protected $accountRepo;
    protected $userMailer;
    protected $contactMailer;

    public function __construct(AccountRepository $accountRepo, UserMailer $userMailer, ContactMailer $contactMailer)
    {
        parent::__construct();

        $this->accountRepo = $accountRepo;
        $this->userMailer = $userMailer;
        $this->contactMailer = $contactMailer;
    }

    public function demo()
    {
        $demoAccountId = Utils::getDemoAccountId();

        if (!$demoAccountId) {
            return Redirect::to('/');
        }

        $account = Account::find($demoAccountId);
        $user = $account->users()->first();

        Auth::login($user, true);

        return Redirect::to('invoices/create');
    }

    public function getStarted()
    {
        if (Auth::check()) {
            return Redirect::to('invoices/create');
        } elseif (!Utils::isOfflex() && Account::count() > 0) {
            return Redirect::to('/login');
        }

        $user = false;
        $guestKey = Input::get('guest_key');

        if ($guestKey) {
            $user = User::where('password', '=', $guestKey)->first();

            if ($user && $user->registered) {
                return Redirect::to('/');
            }
        }

        if (!$user) {
            $account = $this->accountRepo->create();
            $user = $account->users()->first();

            Session::forget(RECENTLY_VIEWED);
        }

        Auth::login($user, true);
        Event::fire('user.login');

        return Redirect::to('invoices/create')->with('sign_up', Input::get('sign_up'));
    }

    public function enableProPlan()
    {
        $invitation = $this->accountRepo->enableProPlan();

        /*
        if ($invoice)
        {
            $this->contactMailer->sendInvoice($invoice);
        }
        */

        return $invitation->invitation_key;
    }

    public function setTrashVisible($entityType, $visible)
    {
        Session::put("show_trash:{$entityType}", $visible == 'true');
        
        if ($entityType == 'user') {
            return Redirect::to('company/'.ACCOUNT_ADVANCED_SETTINGS.'/'.ACCOUNT_USER_MANAGEMENT);
        } elseif ($entityType == 'token') {
            return Redirect::to('company/'.ACCOUNT_ADVANCED_SETTINGS.'/'.ACCOUNT_TOKEN_MANAGEMENT);
        } else {
            return Redirect::to("{$entityType}s");
        }
    }
    public function setInvoiceVisible($entityType, $visible)
    {
    	Session::put("show_invoice_filter:{$entityType}", $visible == 'true');
    	return Redirect::to("{$entityType}");
    }    
    public function setFilterVisible($entityType, $field=false, $operator=false, $value=false)
    {
    	if($value == 0){
    		//reset session value
    		Session::put("show_filter:{$entityType}", false);
    	}else{
    		Session::put("show_filter:{$entityType}", true);
    		Session::put("filter_field:{$entityType}", $field);
    		Session::put("filter_operator:{$entityType}", $operator);
    		Session::put("filter_value:{$entityType}", $value);
    	}
    	
    	return Redirect::to("{$entityType}s");
    }
    
    public function resetFilters($entityType)
    {
    	Session::put("filter_category:{$entityType}", false);
    	Session::put("filter_quarter:{$entityType}", false);
    	Session::put("filter_year:{$entityType}", false);
    	Session::put("filter_client:{$entityType}", false);
    	
    	Session::put("setview:{$entityType}", false);
    	Session::put("view:{$entityType}", false);
    	
    	return Redirect::to("{$entityType}s");
    }
    
    public function filterClient($entityType, $value=false)
    {
    	if($value == 0){
    		//reset session value
    		Session::put("filter_client:{$entityType}", false);
    	}else{
    		Session::put("filter_client:{$entityType}", true);
    		Session::put("filter_client_value:{$entityType}", $value);
    	}
    	return Redirect::to("{$entityType}s");
    }    
    public function filterCategory($entityType, $value=false)
    {
    	if($value == 0){
    		//reset session value
    		Session::put("filter_category:{$entityType}", false);
    	}else{
    		Session::put("filter_category:{$entityType}", true);
    		Session::put("filter_category_value:{$entityType}", $value);
    	}
    	return Redirect::to("{$entityType}s");
    }
 
    public function filterQuarter($entityType, $value=false)
    {
    	if($value == 0){
    		Session::put("filter_quarter:{$entityType}", false);
    	}else{
    		Session::put("filter_year:{$entityType}", false);
    		Session::put("filter_quarter:{$entityType}", true);
    		Session::put("filter_quarter_value:{$entityType}", $value);
    	}
    	return Redirect::to("{$entityType}s");
    }    
 
    public function filterYear($entityType, $value=false)
    {
    	if($value == 0){
    		Session::put("filter_year:{$entityType}", false);
    	}else{
    		Session::put("filter_quarter:{$entityType}", false);
    		Session::put("filter_year:{$entityType}", true);
    		Session::put("filter_year_value:{$entityType}", $value);
    	}
    
    	return Redirect::to("{$entityType}s");
    }
    
    
    public function setView($entityType, $value=false)
    {

    	if($value == 0){
    		Session::put("setview:{$entityType}", false);
    	}else{
    		Session::put("setview:{$entityType}", true);
    		Session::put("view:{$entityType}", $value);
    	}
    	
    	return Redirect::to("{$entityType}s");
    }
    
    public function setQueryVisible($entityType, $table=false, $value=false)
    {
    	if($value == 0){
    		Session::put("show_query:{$entityType}", false);
    	}else{
    		Session::put("show_query:{$entityType}", true);
    		Session::put("filter_query_table:{$entityType}", $table);
    		Session::put("filter_query_value:{$entityType}", $value);
    	}
    	 
    	return Redirect::to("{$entityType}s");
    }   
    public function getSearchData()
    {
        $data = $this->accountRepo->getSearchData();
        return Response::json($data);
    }

    public function showSection($section = ACCOUNT_DETAILS, $subSection = false)
    {
        if ($section == ACCOUNT_DETAILS) {
            $data = [
                'account' => Account::with('users')->findOrFail(Auth::user()->account_id),
                'countries' => Country::remember(DEFAULT_QUERY_CACHE)->orderBy('name')->get(),
                'sizes' => Size::remember(DEFAULT_QUERY_CACHE)->orderBy('id')->get(),
                'industries' => Industry::remember(DEFAULT_QUERY_CACHE)->orderBy('name')->get(),
                'timezones' => Timezone::remember(DEFAULT_QUERY_CACHE)->orderBy('location')->get(),
                'dateFormats' => DateFormat::remember(DEFAULT_QUERY_CACHE)->get(),
                'datetimeFormats' => DatetimeFormat::remember(DEFAULT_QUERY_CACHE)->get(),
                'currencies' => Currency::remember(DEFAULT_QUERY_CACHE)->orderBy('name')->get(),
                'languages' => Language::remember(DEFAULT_QUERY_CACHE)->orderBy('name')->get(),
                'showUser' => Auth::user()->id === Auth::user()->account->users()->first()->id,
            	'settingsPage' => true,
            ];

            return View::make('accounts.details', $data);
        } elseif ($section == ACCOUNT_PAYMENTS) {
            $account = Auth::user()->account;
            $account->load('account_gateways');
            $count = count($account->account_gateways);
            $data = ['settingsPage' => true,];

            if ($count == 0) {
                return Redirect::to('gateways/create');
            } else {
                return View::make('accounts.payments', ['showAdd' => $count < 2],$data);
            }
        } elseif ($section == ACCOUNT_NOTIFICATIONS) {
            $data = [
                'account' => Account::with('users')->findOrFail(Auth::user()->account_id),'settingsPage' => true,
            ];

            return View::make('accounts.notifications', $data);
        } elseif ($section == ACCOUNT_IMPORT_EXPORT) {
            $data = ['settingsPage' => true,];
            return View::make('accounts.import_export',$data);
        } elseif ($section == ACCOUNT_ADVANCED_SETTINGS) {
            $account = Auth::user()->account;
            $data = [
                'account' => $account,
                'feature' => $subSection,
                'title' => trans('texts.invoice_settings'),
                'settingsPage' => true,
            ];

            if ($subSection == ACCOUNT_INVOICE_DESIGN || $subSection == ACCOUNT_CUSTOMIZE_DESIGN) {
                $invoice = new stdClass();
                $client = new stdClass();
                $contact = new stdClass();
                $invoiceItem = new stdClass();

                $client->name = 'Offlex';
                $client->address1 = 'Offlex straat';
                $client->address2 = '1';
                $client->city = 'Offlexdam';
                $client->state = 'Zuid-Holland';
                $client->postal_code = '1111 AA';
                $client->work_phone = '0612345678';
                $client->work_email = 'support@offlex.nl';

                $invoice->invoice_number = Auth::user()->account->getNextInvoiceNumber();
                $invoice->invoice_date = date_create()->format('Y-m-d');
                $invoice->account = json_decode(Auth::user()->account->toJson());
                $invoice->amount = $invoice->balance = 100;

                $invoice->terms = trim($account->invoice_terms);
                $invoice->invoice_footer = trim($account->invoice_footer);

                $contact->email = 'info@offlex.nl';
                $client->contacts = [$contact];

                $invoiceItem->cost = 100;
                $invoiceItem->qty = 1;
                $invoiceItem->notes = 'Notities';
                $invoiceItem->product_key = 'Item';

                $invoice->client = $client;
                $invoice->invoice_items = [$invoiceItem];

                $data['account'] = $account;
                $data['invoice'] = $invoice;
                $data['invoiceLabels'] = json_decode($account->invoice_labels) ?: [];
                $data['title'] = trans('texts.invoice_design');
                $designs = InvoiceDesign::orderBy('id')->get();
                $data['invoiceDesigns'] = InvoiceDesign::getDesigns($designs);

                    //InvoiceDesign::remember(DEFAULT_QUERY_CACHE, 'invoice_designs_cache_'.Auth::user()->maxInvoiceDesignId())->where('id', '<=', Auth::user()->maxInvoiceDesignId())->orderBy('id')->get();

                $design = false;
                foreach ($data['invoiceDesigns'] as $item) {
                    if ($item->id == $account->invoice_design_id) {
                        $design = $item->javascript;
                        break;
                    }
                }
                if ($subSection == ACCOUNT_CUSTOMIZE_DESIGN) {
                    $data['customDesign'] = ($account->custom_design && !$design) ? $account->custom_design : $design;
                    $data['customDesignPage'] = true;
                }

                $data['settingsPage'] = true;
            } else if ($subSection == ACCOUNT_EMAIL_TEMPLATES) {
                $data['invoiceEmail'] = $account->getEmailTemplate(ENTITY_INVOICE);
                $data['quoteEmail'] = $account->getEmailTemplate(ENTITY_QUOTE);
                $data['paymentEmail'] = $account->getEmailTemplate(ENTITY_PAYMENT);
                $data['emailFooter'] = $account->getEmailFooter();                
            }
            return View::make("accounts.{$subSection}", $data);
        } elseif ($section == ACCOUNT_PRODUCTS) {
            $data = [
                'account' => Auth::user()->account,'settingsPage' => true,
            ];

            return View::make('accounts.products', $data);
        }
    }

    public function doSection($section = ACCOUNT_DETAILS, $subSection = false)
    {
    	
        if ($section == ACCOUNT_DETAILS) {
            return AccountController::saveDetails();
        } elseif ($section == ACCOUNT_IMPORT_EXPORT) {
            return AccountController::importFile();
        } elseif ($section == ACCOUNT_MAP) {
            return AccountController::mapFile();
        } elseif ($section == ACCOUNT_NOTIFICATIONS) {
            return AccountController::saveNotifications();
        } elseif ($section == ACCOUNT_EXPORT) {
            return AccountController::export();
        } elseif ($section == ACCOUNT_ADVANCED_SETTINGS) {
            if ($subSection == ACCOUNT_INVOICE_SETTINGS) {
                return AccountController::saveInvoiceSettings();
            } elseif ($subSection == ACCOUNT_INVOICE_DESIGN) {
                return AccountController::saveInvoiceDesign();
            } elseif ($subSection == ACCOUNT_CUSTOMIZE_DESIGN) {
                return AccountController::saveCustomizeDesign();
            } elseif ($subSection == ACCOUNT_EMAIL_TEMPLATES) {
                return AccountController::saveEmailTemplates();
            }
        } elseif ($section == ACCOUNT_PRODUCTS) {
            return AccountController::saveProducts();
        }
    }
    private function saveCustomizeDesign() {
        if (Auth::user()->account->isPro()) {
            $account = Auth::user()->account;
            $account->custom_design = Input::get('custom_design');
            $account->invoice_design_id = CUSTOM_DESIGN;
            $account->save();

            Session::flash('message', trans('texts.updated_settings'));
        }

        return Redirect::to('company/advanced_settings/customize_design');
    }
    private function saveEmailTemplates()
    {
        if (Auth::user()->account->isPro()) {
            
            $account = Auth::user()->account;

            $account->email_template_invoice = Input::get('email_template_invoice', $account->getEmailTemplate(ENTITY_INVOICE));
            $account->email_template_quote = Input::get('email_template_quote', $account->getEmailTemplate(ENTITY_QUOTE));
            $account->email_template_payment = Input::get('email_template_payment', $account->getEmailTemplate(ENTITY_PAYMENT));

            $account->save();

            Session::flash('message', trans('texts.updated_settings'));
        }
        
        return Redirect::to('company/advanced_settings/email_templates');
    }

    private function saveProducts()
    {
        $account = Auth::user()->account;

        $account->fill_products = Input::get('fill_products') ? true : false;
        $account->update_products = Input::get('update_products') ? true : false;
        $account->save();

        Session::flash('message', trans('texts.updated_settings'));
        return Redirect::to('company/products');
    }

    private function saveInvoiceSettings()
    {
        if (Auth::user()->account->isPro()) {
            $account = Auth::user()->account;

            $account->custom_label1 = trim(Input::get('custom_label1'));
            $account->custom_value1 = trim(Input::get('custom_value1'));
            $account->custom_label2 = trim(Input::get('custom_label2'));
            $account->custom_value2 = trim(Input::get('custom_value2'));
            $account->custom_client_label1 = trim(Input::get('custom_client_label1'));
            $account->custom_client_label2 = trim(Input::get('custom_client_label2'));
            $account->custom_invoice_label1 = trim(Input::get('custom_invoice_label1'));
            $account->custom_invoice_label2 = trim(Input::get('custom_invoice_label2'));
            $account->custom_invoice_taxes1 = Input::get('custom_invoice_taxes1') ? true : false;
            $account->custom_invoice_taxes2 = Input::get('custom_invoice_taxes2') ? true : false;

            $account->invoice_number_prefix = Input::get('invoice_number_prefix');
            $account->invoice_number_counter = Input::get('invoice_number_counter');
            $account->quote_number_prefix = Input::get('quote_number_prefix');
            $account->share_counter = Input::get('share_counter') ? true : false;
            
            $account->pdf_email_attachment = Input::get('pdf_email_attachment') ? true : false;

            if (!$account->share_counter) {
                $account->quote_number_counter = Input::get('quote_number_counter');
            }

            if (!$account->share_counter && $account->invoice_number_prefix == $account->quote_number_prefix) {
                Session::flash('error', trans('texts.invalid_counter'));

                return Redirect::to('company/advanced_settings/invoice_settings')->withInput();
            } else {
                $account->save();
                Session::flash('message', trans('texts.updated_settings'));
            }
        }

        return Redirect::to('company/advanced_settings/invoice_settings');
    }

    private function saveInvoiceDesign()
    {
        if (Auth::user()->account->isPro()) {
            $account = Auth::user()->account;
            $account->hide_quantity = Input::get('hide_quantity') ? true : false;
            $account->hide_paid_to_date = Input::get('hide_paid_to_date') ? true : false;
            $account->primary_color = Input::get('primary_color');
            $account->secondary_color = Input::get('secondary_color');
            $account->invoice_design_id =  Input::get('invoice_design_id');

            if (Input::has('font_size')) {
                $account->font_size =  intval(Input::get('font_size'));
            }

            $labels = [];
            foreach (['item', 'description', 'unit_cost', 'quantity'] as $field) {
                $labels[$field] = trim(Input::get("labels_{$field}"));
            }
            $account->invoice_labels = json_encode($labels);

            $account->save();

            Session::flash('message', trans('texts.updated_settings'));
        }

        return Redirect::to('company/advanced_settings/invoice_design');
    }

    private function export()
    {
        $output = fopen('php://output', 'w') or Utils::fatalError();
        header('Content-Type:application/csv');
        header('Content-Disposition:attachment;filename=export.csv');

        $clients = Client::scope()->get();
        AccountController::exportData($output, $clients->toArray());

        $contacts = Contact::scope()->get();
        AccountController::exportData($output, $contacts->toArray());

        $invoices = Invoice::scope()->get();
        AccountController::exportData($output, $invoices->toArray());

        $invoiceItems = InvoiceItem::scope()->get();
        AccountController::exportData($output, $invoiceItems->toArray());

        $payments = Payment::scope()->get();
        AccountController::exportData($output, $payments->toArray());

        $credits = Credit::scope()->get();
        AccountController::exportData($output, $credits->toArray());

        fclose($output);
        exit;
    }

    private function exportData($output, $data)
    {
        if (count($data) > 0) {
            fputcsv($output, array_keys($data[0]));
        }

        foreach ($data as $record) {
            fputcsv($output, $record);
        }

        fwrite($output, "\n");
    }

    private function importFile()
    {
        $data = Session::get('data');
        Session::forget('data');

        $map = Input::get('map');
        $count = 0;
        $hasHeaders = Input::get('header_checkbox');

        $countries = Country::remember(DEFAULT_QUERY_CACHE)->get();
        $countryMap = [];

        foreach ($countries as $country) {
            $countryMap[strtolower($country->name)] = $country->id;
        }

        foreach ($data as $row) {
            if ($hasHeaders) {
                $hasHeaders = false;
                continue;
            }

            $client = Client::createNew();
            $contact = Contact::createNew();
            $contact->is_primary = true;
            $contact->send_invoice = true;
            $count++;

            foreach ($row as $index => $value) {
                $field = $map[$index];
                $value = trim($value);

                if ($field == Client::$fieldName && !$client->name) {
                    $client->name = $value;
                } elseif ($field == Client::$fieldPhone && !$client->work_phone) {
                    $client->work_phone = $value;
                } elseif ($field == Client::$fieldAddress1 && !$client->address1) {
                    $client->address1 = $value;
                } elseif ($field == Client::$fieldAddress2 && !$client->address2) {
                    $client->address2 = $value;
                } elseif ($field == Client::$fieldCity && !$client->city) {
                    $client->city = $value;
                } elseif ($field == Client::$fieldState && !$client->state) {
                    $client->state = $value;
                } elseif ($field == Client::$fieldPostalCode && !$client->postal_code) {
                    $client->postal_code = $value;
                } elseif ($field == Client::$fieldCountry && !$client->country_id) {
                    $value = strtolower($value);
                    $client->country_id = isset($countryMap[$value]) ? $countryMap[$value] : null;
                } elseif ($field == Client::$fieldNotes && !$client->private_notes) {
                    $client->private_notes = $value;
                } elseif ($field == Contact::$fieldFirstName && !$contact->first_name) {
                    $contact->first_name = $value;
                } elseif ($field == Contact::$fieldLastName && !$contact->last_name) {
                    $contact->last_name = $value;
                } elseif ($field == Contact::$fieldPhone && !$contact->phone) {
                    $contact->phone = $value;
                } elseif ($field == Contact::$fieldEmail && !$contact->email) {
                    $contact->email = strtolower($value);
                }
            }

            $client->save();
            $client->contacts()->save($contact);
            Activity::createClient($client, false);
        }

        $message = Utils::pluralize('created_client', $count);
        Session::flash('message', $message);

        return Redirect::to('clients');
    }

    private function mapFile()
    {
        $file = Input::file('file');

        if ($file == null) {
            Session::flash('error', trans('texts.select_file'));

            return Redirect::to('company/import_export');
        }

        $name = $file->getRealPath();

        require_once app_path().'/includes/parsecsv.lib.php';
        $csv = new parseCSV();
        $csv->heading = false;
        $csv->auto($name);

//         if (count($csv->data) + Client::scope()->count() > Auth::user()->getMaxNumClients()) {
//             $message = trans('texts.limit_clients', ['count' => Auth::user()->getMaxNumClients()]);
//             Session::flash('error', $message);

//             return Redirect::to('company/import_export');
//         }

        Session::put('data', $csv->data);

        $headers = false;
        $hasHeaders = false;
        $mapped = array();
        $columns = array('',
            Client::$fieldName,
            Client::$fieldPhone,
            Client::$fieldAddress1,
            Client::$fieldAddress2,
            Client::$fieldCity,
            Client::$fieldState,
            Client::$fieldPostalCode,
            Client::$fieldCountry,
            Client::$fieldNotes,
            Contact::$fieldFirstName,
            Contact::$fieldLastName,
            Contact::$fieldPhone,
            Contact::$fieldEmail,
        );

        if (count($csv->data) > 0) {
            $headers = $csv->data[0];
            foreach ($headers as $title) {
                if (strpos(strtolower($title), 'name') > 0) {
                    $hasHeaders = true;
                    break;
                }
            }

            for ($i = 0; $i<count($headers); $i++) {
                $title = strtolower($headers[$i]);
                $mapped[$i] = '';

                if ($hasHeaders) {
                    $map = array(
                        'first' => Contact::$fieldFirstName,
                        'last' => Contact::$fieldLastName,
                        'email' => Contact::$fieldEmail,
                        'mobile' => Contact::$fieldPhone,
                        'phone' => Client::$fieldPhone,
                        'name|organization' => Client::$fieldName,
                        'street|address|address1' => Client::$fieldAddress1,
                        'street2|address2' => Client::$fieldAddress2,
                        'city' => Client::$fieldCity,
                        'state|province' => Client::$fieldState,
                        'zip|postal|code' => Client::$fieldPostalCode,
                        'country' => Client::$fieldCountry,
                        'note' => Client::$fieldNotes,
                    );

                    foreach ($map as $search => $column) {
                        foreach (explode("|", $search) as $string) {
                            if (strpos($title, 'sec') === 0) {
                                continue;
                            }

                            if (strpos($title, $string) !== false) {
                                $mapped[$i] = $column;
                                break(2);
                            }
                        }
                    }
                }
            }
        }

        $data = array(
            'data' => $csv->data,
            'headers' => $headers,
            'hasHeaders' => $hasHeaders,
            'columns' => $columns,
            'mapped' => $mapped,
        );

        return View::make('accounts.import_map', $data);
    }

    private function saveNotifications()
    {
        $account = Auth::user()->account;
        $account->invoice_terms = Input::get('invoice_terms');
        $account->invoice_footer = Input::get('invoice_footer');
        $account->email_footer = Input::get('email_footer');
        $account->save();

        $user = Auth::user();
        $user->notify_sent = Input::get('notify_sent');
        $user->notify_viewed = Input::get('notify_viewed');
        $user->notify_paid = Input::get('notify_paid');
        $user->save();

        Session::flash('message', trans('texts.updated_settings'));

        return Redirect::to('company/notifications');
    }

    private function saveDetails()
    {
        $rules = array(
            'name' => 'required',
        );

        $user = Auth::user()->account->users()->first();

        if (Auth::user()->id === $user->id) {
            $rules['email'] = 'email|required|unique:users,email,'.$user->id.',id';
        }

        $validator = Validator::make(Input::all(), $rules);

        if ($validator->fails()) {
            return Redirect::to('company/details')
                ->withErrors($validator)
                ->withInput();
        } else {
            $account = Auth::user()->account;
            $account->name = trim(Input::get('name'));
            $account->id_number = trim(Input::get('id_number'));
            $account->vat_number = trim(Input::get('vat_number'));
            $account->work_email = trim(Input::get('work_email'));
            $account->work_phone = trim(Input::get('work_phone'));
            $account->address1 = trim(Input::get('address1'));
            $account->address2 = trim(Input::get('address2'));
            $account->city = trim(Input::get('city'));
            $account->state = trim(Input::get('state'));
            $account->postal_code = trim(Input::get('postal_code'));
            $account->country_id = Input::get('country_id') ? Input::get('country_id') : null;
            $account->size_id = Input::get('size_id') ? Input::get('size_id') : null;
            $account->industry_id = Input::get('industry_id') ? Input::get('industry_id') : null;
            $account->timezone_id = Input::get('timezone_id') ? Input::get('timezone_id') : null;
            $account->date_format_id = Input::get('date_format_id') ? Input::get('date_format_id') : null;
            $account->datetime_format_id = Input::get('datetime_format_id') ? Input::get('datetime_format_id') : null;
            $account->currency_id = Input::get('currency_id') ? Input::get('currency_id') : 1; // US Dollar
            $account->language_id = Input::get('language_id') ? Input::get('language_id') : 1; // English
            $account->save();

            if (Auth::user()->id === $user->id) {
                $user->first_name = trim(Input::get('first_name'));
                $user->last_name = trim(Input::get('last_name'));
                $user->username = trim(Input::get('email'));
                $user->email = trim(strtolower(Input::get('email')));
                $user->phone = trim(Input::get('phone'));
                $user->save();
            }
                
            /* Logo image file */
            if ($file = Input::file('logo')) {
                $path = Input::file('logo')->getRealPath();
                File::delete('logo/'.$account->account_key.'.jpg');

                $image = Image::make($path);
                $mimeType = $file->getMimeType();
                
                if ($image->width == 200 && $mimeType == 'image/jpeg') {
                    $file->move('logo/', $account->account_key . '.jpg');
                } else {
                    $image->resize(200, 120, true, false);
                    Image::canvas($image->width, $image->height, '#FFFFFF')->insert($image)->save($account->getLogoPath());
                }
                
            }

            Event::fire('user.refresh');
            Session::flash('message', trans('texts.updated_settings'));

            return Redirect::to('company/details');
        }
    }

    public function removeLogo()
    {
        File::delete('logo/'.Auth::user()->account->account_key.'.jpg');

        Session::flash('message', trans('texts.removed_logo'));

        return Redirect::to('company/details');
    }

    public function checkEmail()
    {
        $email = User::withTrashed()->where('email', '=', Input::get('email'))->where('id', '<>', Auth::user()->id)->first();

        if ($email) {
            return "taken";
        } else {
            return "available";
        }
    }

    public function submitSignup()
    {
        $rules = array(
            'new_first_name' => 'required',
            'new_last_name' => 'required',
            'new_password' => 'required|min:6',
            'new_email' => 'email|required|unique:users,email,'.Auth::user()->id.',id',
        );

        $validator = Validator::make(Input::all(), $rules);

        if ($validator->fails()) {
            return '';
        }

        $user = Auth::user();
        $user->first_name = trim(Input::get('new_first_name'));
        $user->last_name = trim(Input::get('new_last_name'));
        $user->email = trim(strtolower(Input::get('new_email')));
        $user->username = $user->email;
        $user->password = trim(Input::get('new_password'));
        $user->password_confirmation = trim(Input::get('new_password'));
        $user->registered = true;
        $user->amend();

        if (Utils::isOfflex()) {
            $this->userMailer->sendConfirmation($user);
        } else {
            $this->accountRepo->registerUser($user);
        }

        $activities = Activity::scope()->get();
        foreach ($activities as $activity) {
            $activity->message = str_replace('Guest', $user->getFullName(), $activity->message);
            $activity->save();
        }

        if (Input::get('go_pro') == 'true') {
            Session::set(REQUESTED_PRO_PLAN, true);
        }

        Session::set(SESSION_COUNTER, -1);

        return "{$user->first_name} {$user->last_name}";
    }

    public function doRegister()
    {
        $affiliate = Affiliate::where('affiliate_key', '=', SELF_HOST_AFFILIATE_KEY)->first();

        $license = new License();
        $license->first_name = Input::get('first_name');
        $license->last_name = Input::get('last_name');
        $license->email = Input::get('email');
        $license->transaction_reference = Request::getClientIp();
        $license->license_key = Utils::generateLicense();
        $license->affiliate_id = $affiliate->id;
        $license->product_id = PRODUCT_SELF_HOST;
        $license->is_claimed = 1;
        $license->save();

        return '';
    }

    public function cancelAccount()
    {
        if ($reason = trim(Input::get('reason'))) {
            $email = Auth::user()->email;
            $name = Auth::user()->getDisplayName();

            $data = [
                'text' => $reason,
            ];

            $this->userMailer->sendTo(CONTACT_EMAIL, $email, $name, 'Offlex Feedback [Canceled Account]', 'contact', $data);
        }

        $account = Auth::user()->account;
        $account->forceDelete();

        Confide::logout();

        return Redirect::to('/')->with('clearGuestKey', true);
    }
}
