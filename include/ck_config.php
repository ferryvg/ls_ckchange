<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);
ini_set('html_errors', 1);

$ls_root = realpath(dirname(__FILE__).'/../../../');
if(!is_file($ls_root.'/config/loader.php')) throw new Exception('Hacking attemp!');

require_once($ls_root.'/config/loader.php');

$baseUrl = Config::Get('path.root.web').Config::Get('path.uploads.root').'/';
$baseDir = Config::Get('path.root.server').Config::Get('path.uploads.root').'/';

$config['Thumbnails'] = Array(
	'url'			=>	$baseUrl.'_thumbs',
	'directory'		=>	$baseDir.'_thumbs',
	'enabled'		=>	true,
	'directAccess'	=>	false,
	'maxWidth'		=>	100,
	'maxHeight'		=>	100,
	'bmpSupported'	=>	false,
	'quality'		=>	80
);

function CheckAuthentication() {
	require_once(Config::Get('path.root.engine').'/classes/Engine.class.php');
	
	return LS::CurUsr()->isAdministrator();
}

?>