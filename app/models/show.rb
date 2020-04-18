require 'pry'
class Show < ActiveRecord::Base
  has_many :actors, through: :characters
  belongs_to :network
  has_many :characters
  
  def actors_list
    self.characters.map do |character|
      character.actor.full_name
    end
  end
end