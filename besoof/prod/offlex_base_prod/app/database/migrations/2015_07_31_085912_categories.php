<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Categories extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::dropIfExists ( 'categories' );
		Schema::create ( 'categories', function ($t) {
			$t->increments ( 'id' );
			$t->unsignedInteger ( 'account_id' )->nullable ();
			$t->unsignedInteger ( 'user_id' )->nullable ();
				
			$t->string ( 'name' );
			$t->string ( 'description' )->nullable ();
				
			$t->timestamps ();
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
		Schema::dropIfExists ( 'categories' );
	}

}
