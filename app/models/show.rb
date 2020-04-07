class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    actors = []
    first_name = self.actors.map {|actor| actor.first_name}
    last_name = self.actors.map {|actor| actor.last_name}
    combine = first_name.concat(last_name)
    actors << combine.join(" ")
    actors
  end
end