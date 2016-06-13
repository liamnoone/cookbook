require 'spec_helper'
require_relative '../../../../apps/web/controllers/recipies/new'

describe Web::Controllers::Recipies::New do
  let(:action) { Web::Controllers::Recipies::New.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
