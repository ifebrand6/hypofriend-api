require 'hypofriend_api/objects/hypofriend_base_object'

class HypofriendOffer < HypofriendBaseObject

    def self.new(hypofriend_object)
       @offers =  HypofriendOffer.initGetRequest("#{API::NEW_OFFER_PATH}",hypofriend_object)
       unless @offers.nil?
           return @offers["data"]["offers"]
       end
        # raise invalid params
    end
end