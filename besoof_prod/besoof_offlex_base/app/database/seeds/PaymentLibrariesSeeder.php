<?php

class PaymentLibrariesSeeder extends Seeder
{

	public function run()
	{
		//php artisan db:seed --class=PaymentLibrariesSeeder
		Eloquent::unguard();

		$gateways = [
			['name' => 'BeanStream', 'provider' => 'BeanStream', 'payment_library_id' => 2],
			['name' => 'Psigate', 'provider' => 'Psigate', 'payment_library_id' => 2],
			['name' => 'Alipay', 'provider' => 'Alipay_Express', 'payment_library_id' => 1],
			['name' => 'Buckaroo', 'provider' => 'Buckaroo_CreditCard', 'payment_library_id' => 1],
			['name' => 'Coinbase', 'provider' => 'Coinbase', 'payment_library_id' => 1],
			['name' => 'DataCash', 'provider' => 'DataCash', 'payment_library_id' => 1],
			['name' => 'Neteller', 'provider' => 'Neteller', 'payment_library_id' => 1],
			['name' => 'Pacnet', 'provider' => 'Pacnet', 'payment_library_id' => 1],
			['name' => 'PaymentSense', 'provider' => 'PaymentSense', 'payment_library_id' => 1],
			['name' => 'Realex', 'provider' => 'Realex_Remote', 'payment_library_id' => 1],
			['name' => 'Sisow', 'provider' => 'Sisow', 'payment_library_id' => 1],
			['name' => 'Skrill', 'provider' => 'Skrill', 'payment_library_id' => 1]
		];
		
		foreach ($gateways as $gateway)
		{
			if (!DB::table('gateways')->where('name', '=', $gateway['name'])->get())	
			{
				Gateway::create($gateway);
			}
		}

		$designs = [
			'Clean',
			'Bold',
			'Modern',
			'Plain',
			'Business',
			'Creative',
			'Elegant',
			'Hipster',
			'Playful',
			'Photo',
		];

		for ($i=0; $i<count($designs); $i++) {
			$design = $designs[$i];
			$fileName = storage_path() . '/templates/' . strtolower($design) . '.js';
			if (file_exists($fileName)) {
				$pdfmake = file_get_contents($fileName);
				if ($pdfmake) {
					$record = InvoiceDesign::whereName($design)->first();
					if (!$record) {
						$record = new InvoiceDesign;
						$record->id = $i + 1;
						$record->name = $design;
					}
					$record->pdfmake = $pdfmake;
					$record->save();
				}
			}
		}
	}
}