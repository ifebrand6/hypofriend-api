require 'hypofriend_api/objects/base'

class HypofriendOffer < HypofriendBaseObject

    def self.new(hypofriend_object)
       @offers =  HypofriendOffer.initGetRequest("#{API::NEW_OFFER_PATH}",hypofriend_object)
       unless @offers.nil?
           return @offers["data"]["offers"]
       end
        # raise invalid params
    end

    def self.index;end
    def self.update;end
    def self.delete;end

    protected
    def HypofriendOffer.create(hypofriend_object)
        HypofriendOffer.initGetRequest("#{API::NEW_OFFER_PATH}",hypofriend_object)
    end

end