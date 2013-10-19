name             "phptools"
maintainer       "Hannes Van De Vreken"
maintainer_email "vandevreken.hannes@gmail.com"
license          "MIT"
description      "Install PHP command line tools useful for PHP development."
version          "1.0.0"

recipe "phptools::phpunit", "Installs the command phpunit from source."
recipe "phptools::codeception", "Installs the command codecept from source."
recipe "phptools::composer", "Installs the command composer from source."

attribute "phptools/install_path",
  :display_name => "Command line tools installation path",
  :description => "Defines the folder where these tools get installed.",
  :type => "string",
  :default => "/usr/local/bin"
