# PHP tools

## Contents

- PHPUnit
- Codeception
- Composer
- Behat
- HHVM

### PHPUnit

Installs the PHPUnit PHP Archive file from [download](http://phpunit.de/manual/current/en/installation.html#installation.phar) and provides a link so you can use the following command from the command-line:

```bash
$ phpunit --version
```

### Codeception

Another PHP tool for test-driven-development. Installs from [download](http://codeception.com/install) and creates a link so you can use it quick:

```bash
$ codecept --version
```

### Composer

The most important command-line tool for contemporary PHP development. It's like the gems for Ruby, npm for node.js. Use it and save time. Installs from [source](http://getcomposer.org/download/) and creates a link to use the short command:

```bash
$ composer --version
```

### Behat

For all your Behavior Driven Development you can now use the `behat` command line tool. Install aditional `behat-mink` extensions with composer for all your needs.

```bash
$ behat
```

### HHVM (new)

HipHop Virtual Machine is a fast JIT compiler developed by Facebook. Use it as a replacement for PHP-CLI.

```bash
$ hhvm --version
$ php --version
```

## Additional info

### Requirements

You don't need to have PHP installed to run this cookbook, but these tools are useless without. Use PHP version 5.3 or higher.

### Installation path

The default installation path is `/usr/local/bin` because most linux distro's have this folder in the PATH variable. Feel free to override this path without a trailing slash `/`.

### Components

If you want, you can install a subset of these tools by using the recipes

- phptools::behat
- phptools::codeception
- phptools::composer
- phptools::hhvm
- phptools::phpunit

Use chef roles to override the `default['phptools']['tools']` array, if you want to.

## License

MIT
