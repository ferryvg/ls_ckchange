1. ����������� ����� � ����� /plugins/
2. ���������� CKFinder (� ������� ��������� � ����� /engine/lib/external/)
3. � ����� � CKFinder ����� ���� config.php
	3.1 ����� ����������� ������� CheckAuthentication (�������� 24 ������):
		function CheckAuthentication()
		{
			// WARNING : DO NOT simply return "true". By doing so, you are allowing
			// "anyone" to upload and list the files in your server. You must implement
			// some kind of session validation here. Even something very simple as...

			// return isset($_SESSION['IsAuthorized']) && $_SESSION['IsAuthorized'];

			// ... where $_SESSION['IsAuthorized'] is set to "true" as soon as the
			// user logs in your system. To be able to use session variables don't
			// forget to add session_start() at the top of this file.

			return false;
		}
	3.2 ������ ��� ��� � ������ (�������)
	3.3 ����� �����:
		$config['Thumbnails'] = Array(
			'url' => $baseUrl . '_thumbs',
			'directory' => $baseDir . '_thumbs',
			'enabled' => true,
			'directAccess' => false,
			'maxWidth' => 100,
			'maxHeight' => 100,
			'bmpSupported' => false,
			'quality' => 80);
	3.4 � �����
			'quality' => 80);
		�������� ����������� ����� /include/ck_config.php
		��������, � ���� ��� ���:
			require_once($_SERVER['DOCUMENT_ROOT'].'/plugins/ckchange/include/ck_config.php');
4. ���������� ������ ����� �������.