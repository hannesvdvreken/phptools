# PHP tools

## Contents

- PHPUnit
- Codeception
- Composer

### PHPUnit

Installs the PHPUnit PHP Archive file from [source](http://phpunit.de/manual/current/en/installation.html#installation.phar) and provides a link so you can use the following command from the command-line:

```bash
$ phpunit --version
```

### Codeception

Another PHP tool for test-driven-development. Installs from [source](http://codeception.com/install) and creates a link so you can use it quick:

```bash
$ codecept --version
```

### Composer

The most important command-line tool for contemporary PHP development. It's like the gems for Ruby, npm for node.js. Use it and save time. Installs from [source](http://getcomposer.org/download/) and creates a link to use the short command:

```bash
$ composer --version
```

## Additional info

### Requirements

You don't need to have PHP installed to run this cookbook, but these tools are useless without. Use PHP version 5.3 or higher.

### Installation path

The default installation path is `/usr/local/bin` because most linux distro's have this folder in the PATH variable. Feel free to override this path without a trailing slash `/`.

### Components

If you want, you can install a subset of these tools by using the recipes

- phptools::phpunit
- phptools::codeception
- phptools::composer

or a combination.

## License

MIT