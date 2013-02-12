Meteor.log = (message, params={}, level='info') ->
  if _.isString(params)
    level = params
    params = {}

  if __? and _.isFunction(__)
    message = __("services.log.#{level}", msg: __(message, params))
  else
    message = level + ': ' + message
  Meteor._debug message

_.extend Meteor.log,
  error: (message, params={}) ->
    @ message, params, 'error'

  warning: (message, params={}) ->
    @ message, params, 'warning'

  info: (message, params={}) ->
    @ message, params, 'info'

  throw: (message, params={}) ->
    throw new Error(__(message, params))

if Meteor.i18nMessages?
  Meteor.i18nMessages.log =
    error:
      en: 'Error: {{msg}}'
      de: 'Fehler: {{msg}}'
      pt: 'Erro: {{msg}}'
    info: 'Info: {{msg}}'
    warning:
      en: 'Warning: {{msg}}'
      de: 'Vorsicht: {{msg}}'
      pt: 'Cuidado: {{msg}}'
