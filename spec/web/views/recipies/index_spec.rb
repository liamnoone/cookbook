require 'spec_helper'
require_relative '../../../../apps/web/views/recipies/index'

describe Web::Views::Recipies::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/recipies/index.html.erb') }
  let(:view)      { Web::Views::Recipies::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
