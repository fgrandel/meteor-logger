Meteor.log =
  message: (message, level, params={}) ->
    if __? and _.isFunction(__)
      message = __("services.log.#{level}", msg: __(message, params))
    else
      message = level + ': ' + message
    Meteor._debug message

  error: (message, params={}) ->
    @message message, 'error', params

  warning: (message, params={}) ->
    @message message, 'warning', params

  info: (message, params={}) ->
    @message message, 'info', params

  throw: (message, params={}) ->
    throw __(message, params)

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
