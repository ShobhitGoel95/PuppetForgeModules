require 'spec_helper'
describe 'msql' do
  context 'with default values for all parameters' do
    it { should contain_class('msql') }
  end
end
