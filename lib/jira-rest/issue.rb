require 'httparty'

class Jira::Issue < Hashie::Mash
  include HTTParty

  # TODO: Config options for these
  base_uri 'influitive.dyndns.org:8080/rest/api/2.0.alpha1'
  basic_auth 'ryan@influitive.com', 'firefly'

  def self.find(key)
    resp = get("/issue/#{key}")
    raise "Could not find issue - #{resp['errorMessages'].join(",")}" if resp.code != 200
    self.new(resp['fields'])
  end

end