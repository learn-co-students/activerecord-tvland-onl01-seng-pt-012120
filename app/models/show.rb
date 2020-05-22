class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    self.characters.collect{|c| "#{c.actor.first_name} #{c.actor.last_name}"}
  end

end
