require 'spec_helper'
require_relative '../../../../apps/web/controllers/recipies/index'

describe Web::Controllers::Recipies::Index do
  let(:action) { Web::Controllers::Recipies::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
