require 'spec_helper'

describe 'source_path' do
  it { should run.with_params('puppet:///modules/demo1/a_file').and_return(["#{Dir.pwd}/spec/fixtures/modules/demo1/files/a_file"]) }
end
