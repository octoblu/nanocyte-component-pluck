ReturnValue = require 'nanocyte-component-return-value'
_           = require 'lodash'
{ deepSet }   = require ('lodash-deep')

class Pluck extends ReturnValue
  onEnvelope: (envelope) =>
    { config }     = envelope
    { key, value } = config
    message        = {}
    deepSet(message, key, value)
    return message

module.exports = Pluck
