<?php
/**
 * General Configuration
 *
 * All of your system's general configuration settings go in here. You can see a
 * list of the available settings in vendor/craftcms/cms/src/config/GeneralConfig.php.
 *
 * @see \craft\config\GeneralConfig
 */

use craft\config\GeneralConfig;
use craft\helpers\App;

return [
    // Global settings
    '*' => [
        // Default Week Start Day (0 = Sunday, 1 = Monday...)
        'defaultWeekStartDay' => 0,

        // Enable CSRF Protection (recommended)
        'enableCsrfProtection' => true,
//        'allowAdminChanges' =>false,

        // Whether generated URLs should omit "index.php"
        'omitScriptNameInUrls' => true,

        'permissionsPolicyHeader' => null,
        // Control Panel trigger word
        'cpTrigger' => 'admin',

        // The secure key Craft will use for hashing and encrypting data
        'securityKey' => getenv('SECURITY_KEY'),
        'aliases' => [
            '@web' => getenv('CRAFTENV_BASE_URL'),
            '@webroot' => dirname(__DIR__) . '/public_html',
            '@assetBaseUrl' => getenv('ASSET_BASE_URL'),
            '@assetBasePath' => getenv('ASSET_BASE_PATH'),
            '@baseUrl' => getenv('PRIMARY_SITE_URL'),
            '@basePath' => getenv('CRAFTENV_BASE_PATH')
        ],
        'errorTemplatePrefix' => "/errors/",
    ],

    // Dev environment settings
    'dev' => [
        // Base site URL
       //'baseUrl' => getenv('CRAFTENV_BASE_URL'),
       'backupCommand' => getenv('BACKUP_COMMAND'),
       'restoreCommand' => getenv('RESTORE_COMMAND'),
        // Dev Mode (see https://craftcms.com/support/dev-mode)
        'devMode' => true,
        'enableTemplateCaching' => false,
    ],

    // Production environment settings
    'production' => [
      
    ],
];
