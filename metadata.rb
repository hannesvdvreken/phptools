name             "phptools"
maintainer       "Hannes Van De Vreken"
maintainer_email "vandevreken.hannes@gmail.com"
license          "MIT"
description      "Install PHP command line tools useful for PHP development."
version          "1.0.0"

recipe "phptools::behat", "Installs the command behat as a downloadable phar."
recipe "phptools::codeception", "Installs the command codecept as a downloadable phar."
recipe "phptools::composer", "Installs the command composer as a downloadable phar."
recipe "phptools::hhvm", "Installs the hhvm from package repository."
recipe "phptools::phpunit", "Installs the command phpunit as a downloadable phar."
