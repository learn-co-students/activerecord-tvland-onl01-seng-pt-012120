class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show
  
    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end

    def build_show(args)
        # show = Show.find_by(args)
        # self.show = show || self.show = Show.create(args)
        self.show = Show.find_or_create_by(args)
      end
end