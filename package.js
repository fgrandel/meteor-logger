Package.describe({
  summary: "A simple logger that works on client and server, e.g. Meteor.log.warning(...)."
});

Package.on_use(function (api, where) {
  where = where || ['client', 'server'];
  api.use(['underscore'], where);
  api.add_files('logger.js', where);
});
