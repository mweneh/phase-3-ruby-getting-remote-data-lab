require 'net/http'
require 'open-uri'
require 'json'
URL=''
class GetRequester
    def initialize(url)
       @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        result = JSON.parse(get_response_body)
        result
    end
end
