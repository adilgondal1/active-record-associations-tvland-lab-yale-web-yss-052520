class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    #attr_accessor :name, :day, :season, :genre

    def actors_list
        self.actors.map{|actor| actor.full_name}
    end
  
end