class Table < ActiveRecord::Base
    validates_presence_of :seats
    
    belongs_to :restaurant
    has_many :reservations
end