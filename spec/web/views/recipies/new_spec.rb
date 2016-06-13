require 'spec_helper'
require_relative '../../../../apps/web/views/recipies/new'

describe Web::Views::Recipies::New do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/recipies/new.html.erb') }
  let(:view)      { Web::Views::Recipies::New.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
