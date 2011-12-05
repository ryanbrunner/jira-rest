require 'rubygems'
require 'bundler/setup'

require 'hashie'
require 'httparty'
require 'webmock'
require 'vcr'

require 'factory_girl'
Dir[File.dirname(__FILE__) + '/factories/*.rb'].each {|file| require file }

require 'jira-rest'

RSpec.configure do |config|
  config.before(:all) { VCR.insert_cassette('default') }
end

VCR.config do |c|
  c.cassette_library_dir = 'fixtures/vcr_cassettes'
  c.stub_with :webmock # or :fakeweb
end