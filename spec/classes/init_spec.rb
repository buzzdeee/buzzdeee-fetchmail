require 'spec_helper'
describe 'fetchmail' do

  context 'with defaults for all parameters' do
    it { should contain_class('fetchmail') }
  end
end
