class Reservation < ActiveRecord::Base
    validates_presence_of :from, :to, :number_of_guests
    
    belongs_to :table
end