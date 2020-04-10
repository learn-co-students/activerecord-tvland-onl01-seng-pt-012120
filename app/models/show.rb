class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    list =[]
    self.actors.map{|a| list << "#{a.full_name}"}
    list
  end
end