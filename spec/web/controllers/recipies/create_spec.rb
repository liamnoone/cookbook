require 'spec_helper'
require_relative '../../../../apps/web/controllers/recipies/create'

describe Web::Controllers::Recipies::Create do
  let(:action) { Web::Controllers::Recipies::Create.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
