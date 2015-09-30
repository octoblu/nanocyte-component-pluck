ReturnValue = require 'nanocyte-component-return-value'
Pluck = require '../src/pluck'

describe 'Pluck', ->
  beforeEach ->
    @sut = new Pluck

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      it 'should return the message', ->
        expect(@sut.onEnvelope({config: {key: 'potato' , value: {taco: {banana: {rabbit: 6}}} } , message: {taco: {banana: {rabbit: 6}}}})).to.deep.equal { potato: { taco: { banana: {rabbit: 6} } } }
