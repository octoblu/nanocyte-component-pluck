ReturnValue = require 'nanocyte-component-return-value'

class Pluck extends ReturnValue
  onEnvelope: (envelope) =>
    return envelope.message

module.exports = Pluck
