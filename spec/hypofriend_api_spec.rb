require 'hypofriend_api'
describe HypofriendOffer do
    before :all do
      @dummy_offer = HypofriendOffer.new({
        loan_amount: 35000,
         property_value: 35000,
        repayment: 1.0,
        years_fixed: 15
      })
    end
    it "a valid array is return when new offers are queried" do
      expect(@dummy_offer).should be an_instance_of(Array)
    end
  
    it "anything else is delicious" do
      expect(Foodie::Food.portray("Not Broccoli")).to eql("Delicious!")
    end
  end
  