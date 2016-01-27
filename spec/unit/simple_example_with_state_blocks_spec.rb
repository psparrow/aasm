require 'spec_helper'

describe 'state machine' do
  let(:simple) { SimpleExampleWithStateBlocks.new }

  it 'starts with an initial state' do
    expect(simple.aasm.current_state).to eq(:initialised)
    expect(simple).to respond_to(:initialised?)
    expect(simple).to be_initialised
  end

  it 'can define methods within a state' do
    expect(simple.foo).to eq 'bar'
    simple.fill_out
    expect(simple.foo).to eq 'baz'
  end
end
