class Actor < ActiveRecord::Base
  
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
   "#{self.first_name} #{self.last_name}"
  end
  
  def list_roles
    list_names = []
    self.characters.each {|c| list_names << c.name}.uniq
    
    list_shows = []
    self.shows.each {|s| list_shows << s.name}.uniq
    
    roles = []
    list_names.map {|name| roles << name + " - " + list_shows[0]}.flatten.uniq
    
  end
end