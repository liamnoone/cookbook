require 'rubygems'
require 'bundler/setup'
require 'hanami/setup'
require_relative '../lib/cookbook'
require_relative '../apps/web/application'

Hanami::Container.configure do
  mount Web::Application, at: '/'
end
