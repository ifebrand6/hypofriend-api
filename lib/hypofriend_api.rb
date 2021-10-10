# frozen_string_literal: true
require 'net/http'
require_relative "hypofriend_api/version"
require 'hypofriend_api/food'

module HypofriendApi
  class Error < StandardError; end
  # Your code goes here...
  # fetch the api and display it as ob
  class RequestAPI
    uri = URI('https://offer-v3.hypofriend.de/api/v5/new-offers?loan_amount=350000&property_value=350000&repayment=1.0&years_fixed=15')
    Net::HTTP.get(uri)
    def getOffer
      res = Net::HTTP.get_response(uri)
      return res
    end
  end
 
end
