<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Quarters extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::dropIfExists ( 'quarters' );
		Schema::create ( 'quarters', function ($t) {
			$t->increments ( 'id' );
			$t->unsignedInteger ( 'account_id' )->nullable ();
			$t->unsignedInteger ( 'user_id' )->nullable ();
				
			$t->string ( 'name' );
			$t->string ( 'description' )->nullable ();
			$t->date ( 'quarter_date_start' )->nullable ();
			$t->date ( 'quarter_date_end' )->nullable ();
				
			$t->nullableTimestamps ();
			$t->softDeletes ();
				
			$t->unsignedInteger ( 'public_id' )->index ();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
			Schema::dropIfExists ( 'quarters' );
	}

}
