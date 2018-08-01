require 'nekos/ver'
require 'json'
require 'rest-client'

module NekosLife
  # Main API functions
  module API
    module_function

    BASE = 'https://nekos.life/api/v2'.freeze

    # Request an endpoint easily
    # @return [Hash] the response given in JSON
    def request(type, *attributes)
      parse_json(RestClient.send(type, *attributes))
    rescue RuntimeError => e
      raise e
    end

    # Requests an image
    # @param type [String] the image type
    # @return [Hash] the response given in JSON
    def img(type)
      request(
        :get,
        "#{BASE}/img/#{type}"
      )
    end

    # Requests an endpoint
    # @param endpoint [String] the endpoint
    # @return [Hash] the response given in JSON
    def get(endpoint)
      request(
        :get,
        "#{BASE}/#{endpoint}"
      )
    end

    # @!visibility private
    def parse_json(raw)
      JSON.parse(raw)
    rescue JSON::ParserError
      raw
    end
  end
end
