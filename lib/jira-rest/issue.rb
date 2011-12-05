require 'httparty'

class Jira::Issue
  include HTTParty

  # TODO: Config options for these
  base_uri 'influitive.dyndns.org:8080/rest/api/2.0.alpha1'
  basic_auth 'ryan@influitive.com', 'firefly'

  def self.find(key)
    get("/issue/#{key}")
  end
end