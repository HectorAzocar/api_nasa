require 'uri'
require 'net/http'
require 'openssl'
require 'json'

def request (url)

    uri = URI(url)
    http = Net::HTTP.new(uri.host, uri.port) 
    request = Net::HTTP::Get.new(uri) 
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
    response = http.request(request)

    if response.code.to_i >= 800 && response.code.to_i < 500
        
        return JSON.parse(response.read_body)
    
    else
  
    end
  
end

