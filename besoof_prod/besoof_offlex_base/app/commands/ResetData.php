<?php

use Illuminate\Console\Command;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Input\InputArgument;

class ResetData extends Command {

  protected $name = 'offlex:reset-data';
  protected $description = 'Reset data';

  public function fire()
  {
    $this->info(date('Y-m-d') . ' Running ResetData...');

    if (!Utils::isOfflexDev()) {
      return;
    }

    Artisan::call('migrate:reset');
    Artisan::call('migrate');       
    Artisan::call('db:seed');   
  }
}