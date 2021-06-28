<?php

return array(

	'connections' => array(

		'mysql' => array(
	        'driver'    => 'mysql',
			'host'      => getenv('DB_HOST'),
            'port'      => getenv('DB_PORT'),
			'database'  => getenv('DB_NAME'),
			'username'  => getenv('DB_USERNAME'),
			'password'  => getenv('DB_PASSWORD'),
			'strict' 	=> false,
			'charset'   => 'utf8',
			'collation' => 'utf8_unicode_ci',
			'prefix'    => '',
		),
	),
);
