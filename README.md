<a name="CKChange"></a>
## CKChange
Плагин позволяет выбирать фото из уже загруженных на сервер. Необходим CKFinder.
По умолчанию данный функционал доступен только администраторам.

<a name="license"></a>
### Лицензия
Данный плагин распространяется по лицензии MIT. Полный текст лицензии находится в файле LICENSE.txt

<a name="install"></a>
### Установка

#####1. Распаковать архив в папку `/plugins/`
#####2. Заугрузить CKFinder (я советую загружать в папку `/engine/lib/external/`)
#####3. В папке с CKFinder найти файл `config.php`

* Найти определение функции `CheckAuthentication` (примерно 24 строка):

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

* Снести все это к чертям (удалить)
* Далее найти:

        $config['Thumbnails'] = Array(
                'url' => $baseUrl . '_thumbs',
                'directory' => $baseDir . '_thumbs',
                'enabled' => true,
                'directAccess' => false,
                'maxWidth' => 100,
                'maxHeight' => 100,
                'bmpSupported' => false,
                'quality' => 80);

* И после `'quality' => 80);` добавить подключение файла `/include/ck_config.php`. Например, у меня это так:

        require_once($_SERVER['DOCUMENT_ROOT'].'/plugins/ckchange/include/ck_config.php');

#####4. Установить модуль через админку.
