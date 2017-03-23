class Sponsor < ActiveRecord::Base
    validates_presence_of :name
    validates_length_of :name, :maximum => 40
    validates_presence_of :spn_type
    validates_length_of :spn_type, :maximum => 40
end
