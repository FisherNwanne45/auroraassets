<?php 

$name = 'Unicorn Growth Network';

$addr = '6543 South Las Vegas Boulevard<br>
Las Vegas, NV 89119.';

$phone = 'TOLL FREE';

$year = '2024';

$fyear = '2021';

$translate ='<div class="gtranslate_wrapper"></div> <script>window.gtranslateSettings = {"default_language":"en","detect_browser_language":true,"languages":["en","fr","ko","de","it","es","zh-CN","ja"],"wrapper_selector":".gtranslate_wrapper","select_language_label":"Select Language"}</script> <script src="https://cdn.gtranslate.net/widgets/latest/dropdown.js" defer></script>';

$url = 'unicorngrowthnetwork.com';

$email = 'info@unicorngrowthnetwork.com';

$chat = '<script src="//code.tidio.co/ertkegfov80zqy9x16x4ah0kw3qya4yh.js" async></script>';


// Include the Dotenv library file
require_once __DIR__ . '/phpdotenv-master/src/Dotenv.php';

// Load environment variables
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__ . '/../'); // Adjust the path as needed
$dotenv->load();

// Database configuration
$dbConfig = [
    'connection' => $_ENV['DB_CONNECTION'],
    'host' => $_ENV['DB_HOST'],
    'port' => $_ENV['DB_PORT'],
    'database' => $_ENV['DB_DATABASE'],
    'username' => $_ENV['DB_USERNAME'],
    'password' => $_ENV['DB_PASSWORD'],
];

 
 

// Default super admin password: barfume / admin123
// Default admin password: info@crypto.com / admin123
// Default User login: test@crypto.com
// Password: test_user123 
// Edit loan.php
 