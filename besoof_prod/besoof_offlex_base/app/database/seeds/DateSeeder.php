<?php

class DateSeeder extends Seeder
{

	public function run()
	{
		
		DB::table('date_formats')->delete();
		DB::table('datetime_formats')->delete();
		
		DatetimeFormat::create(array('format' => 'd-M-Y H:i:s', 'label' => '10-Mrt-2013'));
		DatetimeFormat::create(array('format' => 'j M, Y H:i:s', 'label' => '10 Mrt, 2013 6:15'));
		DatetimeFormat::create(array('format' => 'd-m-Y H:i:s', 'label' => '10-03-2013 6:15'));
		DatetimeFormat::create(array('format' => 'd/M/Y g:i a', 'label' => '10/Maart/2013'));
		DatetimeFormat::create(array('format' => 'd-M-Yk g:i a', 'label' => '10-Mrt-2013'));
		DatetimeFormat::create(array('format' => 'd/F/Y g:i a', 'label' => '10/Maart/2013'));
		DatetimeFormat::create(array('format' => 'd-F-Y g:i a', 'label' => '10-Maart-2013'));
		DatetimeFormat::create(array('format' => 'M j, Y g:i a', 'label' => '10 Mrt, 2013 6:15'));
		DatetimeFormat::create(array('format' => 'F j, Y g:i a', 'label' => '10 Maart, 2013 6:15'));
		DatetimeFormat::create(array('format' => 'D M jS, Y g:ia', 'label' => 'Ma 10 Maart, 2013 6:15'));
		
		DateFormat::create(array('format' => 'd-F-Y', 'picker_format' => 'dd-MM-yyyy', 'label' => '10-Maart-2013'));
		DateFormat::create(array('format' => 'l j F Y', 'picker_format' => 'd MM yyyy', 'label' => 'maandag 10 maart 2013'));
		DateFormat::create(array('format' => 'd-m-Y', 'picker_format' => 'dd-mm-yyyy', 'label' => '10-03-2013'));
		DateFormat::create(array('format' => 'd/M/Y', 'picker_format' => 'dd/M/yyyy', 'label' => '10/Mrt/2013'));
		DateFormat::create(array('format' => 'd-M-Y', 'picker_format' => 'dd-M-yyyy', 'label' => '10-Mrt-2013'));
		DateFormat::create(array('format' => 'd/F/Y', 'picker_format' => 'dd/MM/yyyy', 'label' => '10/Maart/2013'));
		DateFormat::create(array('format' => 'd-F-Y', 'picker_format' => 'dd-MM-yyyy', 'label' => '10-Maart-2013'));
		DateFormat::create(array('format' => 'M j, Y', 'picker_format' => 'M d, yyyy', 'label' => '10 Mrt, 2013'));
		DateFormat::create(array('format' => 'F j, Y', 'picker_format' => 'MM d, yyyy', 'label' => '10 Maart, 2013'));
		DateFormat::create(array('format' => 'D M j, Y', 'picker_format' => 'D MM d, yyyy', 'label' => 'Ma 10 Maart, 2013'));
		
	}
}
