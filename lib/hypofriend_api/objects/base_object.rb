
class BaseObject
    require 'hypofriend_api/modules/api'
    require 'hypofriend_api/hypofriend_server_error'
    require 'rest-client'
    require 'json'
    require 'rack'  
    attr_reader :hypofriend_object
    
    protected
    def self.initGetRequest(url, hypofriend_object)
        query_params = Rack::Utils.build_query(hypofriend_object)
        result = nil
        begin
            response = RestClient.get "#{API::BASE_URL}#{url}#{query_params}"
            unless (response.code == 200 || response.code == 201)
                raise ServerError.new(response), "HTTP Code #{response.code}: #{response.body}"
            end
             result = JSON.parse(response.body)
            unless (result['status'] != 0 )
                raise HypofriendServerError.new(response), "Server Message: #{result['message']}"
            end
         rescue JSON::ParserError => jsonerr
                raise HypofriendSaerverError.new(response) , "Invalid result data. Could not parse JSON response body \n #{jsonerr.message}"     
        end	  
        return result
        
    end

end
