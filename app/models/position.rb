class Position < ActiveRecord::Base
    has_many :members
    validates_presence_of :name
    validates_length_of :name, :maximum => 50
    validates_presence_of :pos_type
    validates_length_of :pos_type, :maximum => 50
end
