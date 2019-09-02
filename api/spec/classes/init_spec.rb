require 'spec_helper'
describe 'api' do
  context 'with default values for all parameters' do
    it { should contain_class('api') }
  end
end
