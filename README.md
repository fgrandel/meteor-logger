Meteor Internationalization (i18n) Library
==========================================

Installation
------------

The package can be installed with [Meteorite](https://github.com/oortcloud/meteorite/).

Type inside your application directory:

``` sh
$ mrt add logger
```

Usage
-----

The logger supports the following log levels:

``` javascript
Meteor.log.info('some message');
Meteor.log.warning('...');
Meteor.log.error('...');
Meteor.log.message('...');
```


Translation
-----------

If you add the [i18n package](https://atmosphere.meteor.com/package/i18n) to your application
then all messages will automatically be translated.


Questions
---------

Please write to jerico.dev@gmail.com.
