<?php
// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'db_name' );

/** Database username */
define( 'DB_USER', 'user_name' );

/** Database password */
define( 'DB_PASSWORD', 'pass' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

define('AUTH_KEY',         'IJ%Vti63wx@_vikWviM+wb$-S]I8|?=^@|C_spxYEYGPp?Rw8)VIo:kC6tj%t&Ur');
define('SECURE_AUTH_KEY',  'z+vvC`w*p|-eRzUGKjR1pT-?H@kkNg+aNEy#*uvKjh9/Ya)Z-yw5_$8nxk}Hf>p ');
define('LOGGED_IN_KEY',    'gJd}-`]BYk,-|diH jbq._XNC_3b+E7O+ZTKg(ZnXsGhorVtaKJeE,t(wr>nd|`D');
define('NONCE_KEY',        ')T :eY*X V@+% @sd.ECGPK}f4zNa~|I!Cwy#&V%*Pe|]z;(K0%?lC!lXD1V*|uW');
define('AUTH_SALT',        'd?HS=^7A.`-v?:nc[1G$iiv2>(.Nl#2-RZZXwF%*dP#@o-|l!?-xpRssy.-=>Is&');
define('SECURE_AUTH_SALT', 'qVg+MQ$1)pJ?5[D@XXiAF/n/0`KJqOs2-Ik;)IoVr9Gih{|:>?{Vmc8!/m]|=t:p');
define('LOGGED_IN_SALT',   'W<:ggbw*|jC%;@P_jxlyE!~lCqY>4*zA-{YeWC/rOss;b@rjUyHeuqUM)2+Id/:n');
define('NONCE_SALT',       'tFA>M4t34K=![D k yZib -NJ^8y(i:B=U}u2yCerTyqytK+Dmsf5YKhQ8dIOEh2');


/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';