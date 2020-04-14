class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
   self.actors.collect do |act|
    act.full_name
   end
  end

  def built_network(args)
    binding.pry
    self.network = Network.find_or_create_by(args)
  end
end