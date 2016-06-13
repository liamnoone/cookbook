require 'spec_helper'
require_relative '../../../../apps/web/views/recipies/create'

describe Web::Views::Recipies::Create do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/recipies/create.html.erb') }
  let(:view)      { Web::Views::Recipies::Create.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
