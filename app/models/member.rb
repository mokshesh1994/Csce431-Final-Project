class Member < ActiveRecord::Base
    belongs_to :position
    belongs_to :division
end
