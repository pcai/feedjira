module Feedjira
  class Fetcher
    def self.fetch(*args)
      new(*args).fetch
    end

    attr_reader :url

    def initialize(url)
      @url = url
    end

    def fetch
      response = conn.get url
      response.body
    end

    private

    def conn
      Faraday.default_connection
    end
  end
end