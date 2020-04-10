class Show < ActiveRecord::Base
   
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  # has an #actors_list method that returns a list of the full names of each actor associated with the show
  def actors_list
    self.characters.map do |c|
            "#{c.actor.full_name}"
        end
  end 
end