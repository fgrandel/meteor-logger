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

You can also use the shortcuts

``` javascript
Meteor.log('some message'); // Equivalent to Meteor.log.info('some message')
Meteor.log('some message', 'error'); // Equivalent to Meteor.log.error('some message')
```


Translation
-----------

If you add the [i18n package](https://atmosphere.meteor.com/package/i18n) to your application
then all messages will automatically be translated.

All the following are valid calls to the logger API:

``` javascript
Meteor.log.info('someMessageId', {param: '...'});
Meteor.log('someMessageId', {param: '...'});
Meteor.log('someMessageId', {param: '...'}, 'warning');
Meteor.log('someMessageId', 'warning');
```

See the i18n package README for further info about message IDs, translation parameters, etc.


Questions
---------

Please write to jerico.dev@gmail.com.
