<?php
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
class expenses extends Migration {
	
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		//
			Schema::dropIfExists ( 'expenses' );
			Schema::create ( 'expenses', function ($t) {
				$t->increments ( 'id' );
				$t->unsignedInteger ( 'invoice_id' )->nullable ();
				$t->unsignedInteger ( 'account_id' )->nullable ();
				$t->unsignedInteger ( 'client_id' )->nullable ();
				$t->unsignedInteger ( 'user_id' )->nullable ();
				$t->unsignedInteger ( 'product_id' )->nullable ();
				$t->unsignedInteger ( 'category_id' )->nullable ();
					
				$t->string ( 'name' );
				$t->string ( 'description' )->nullable ();
				$t->decimal ( 'amount', 13, 2 );
				$t->string ( 'path' )->nullable ();
				$t->string ( 'file_name')->nullable ();
					
				$t->nullableTimestamps ();
				$t->softDeletes ();
					
				$t->boolean ( 'is_deleted' )->default ( false );
				$t->date ( 'expense_date' )->nullable ();
				$t->string ( 'transaction_reference' )->nullable ();
					
				$t->foreign ( 'invoice_id' )->references ( 'id' )->on ( 'invoices' )->onDelete ( 'cascade' );
				$t->foreign ( 'account_id' )->references ( 'id' )->on ( 'accounts' )->onDelete ( 'cascade' );
				$t->foreign ( 'client_id' )->references ( 'id' )->on ( 'clients' )->onDelete ( 'cascade' );
				$t->foreign ( 'user_id' )->references ( 'id' )->on ( 'users' )->onDelete ( 'cascade' );
				$t->foreign ( 'product_id' )->references ( 'id' )->on ( 'products' )->onDelete ( 'cascade' );
				;
					
				$t->unsignedInteger ( 'public_id' )->index ();
				$t->unique ( array ('account_id','public_id'));					
			});
	}
	
	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists ( 'expenses' );
	}
}
