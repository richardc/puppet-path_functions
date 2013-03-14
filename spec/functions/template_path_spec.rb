require 'spec_helper'

describe 'template_path' do
  it { should run.with_params('demo1/a_template').and_return(["#{Dir.pwd}/spec/fixtures/modules/demo1/templates/a_template"]) }
end
