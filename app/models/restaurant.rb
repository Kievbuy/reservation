class Restaurant < ActiveRecord::Base
    validates_presence_of :name
    
    has_many :tables
end