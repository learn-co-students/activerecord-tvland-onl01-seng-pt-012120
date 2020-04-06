class Character < ActiveRecord::Base
  belongs_to :actor 
  belongs_to :show
  
 def say_that_thing_you_say 
  self.name + " always says: "+ self.catchphrase
 end
   
  def build_show(name:)
    new_show = Show.create(name: name)
    self.show = new_show
  end
  
  def build_network(call_letters:)
    new_network = Network.create(call_letters: call_letters)
    
  end   
end


#   it "can chain-build associations to which it belongs" do
#     malcolm = Character.new(name: "Malcolm Reynolds")
#     malcolm.build_show(name: "Firefly").build_network(:call_letters => "Fox")
#     show = malcolm.show
#     expect(show.name).to eq("Firefly")
#     expect(show.network.call_letters).to eq("Fox")
#   end