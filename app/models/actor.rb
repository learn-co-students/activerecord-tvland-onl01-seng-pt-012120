class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    fn = "#{self.first_name} #{self.last_name}"
    fn
  end
  
  def list_roles
    roles = []
    characters = self.characters.map{|c| c.name}
    shows = self.shows.map{|s| s.name}
    combine = characters.concat(shows)
    roles << combine.join(" - ")
    roles
  end
end