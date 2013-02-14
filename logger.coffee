Meteor.log = (message, params = {}, level = 'info') ->
  if _.isString(params)
    level = params
    params = {}

  # Check the log level.
  self = Meteor.log
  levels = ['info', 'warning', 'error']
  if _.indexOf(levels, level) < _.indexOf(levels, self._debugLevel)
    return

  # Log to the console.
  if __? and _.isFunction(__)
    message = __("_meteor.logger.#{level}", msg: __(message, params))
  else
    message = level + ': ' + message
  Meteor._debug message

_.extend Meteor.log,
  error: (message, params = {}) ->
    @ message, params, 'error'

  warning: (message, params = {}) ->
    @ message, params, 'warning'

  info: (message, params = {}) ->
    @ message, params, 'info'

  throw: (message, params = {}) ->
    throw new Error(__(message, params))

  _debugLevel: 'warning'

  setDebugLevel: (debugLevel) -> @_debugLevel = debugLevel


Meteor.i18nMessages = {} unless Meteor.i18nMessages?
Meteor.i18nMessages._meteor = {} unless Meteor.i18nMessages._meteor?
Meteor.i18nMessages._meteor.logger =
  error:
    en: 'Error: {{msg}}'
    de: 'Fehler: {{msg}}'
    pt: 'Erro: {{msg}}'
  info: 'Info: {{msg}}'
  warning:
    en: 'Warning: {{msg}}'
    de: 'Vorsicht: {{msg}}'
    pt: 'Cuidado: {{msg}}'
