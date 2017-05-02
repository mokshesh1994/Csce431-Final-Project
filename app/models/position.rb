class Position < ActiveRecord::Base
    has_attached_file :image, styles: {small: "150x150#"}
    validates_attachment_content_type :image, :content_type => ["image/jpeg","image/png"]
    has_many :members
    validates_presence_of :name
    validates_length_of :name, :maximum => 50
    validates_presence_of :pos_type
    validates_length_of :pos_type, :maximum => 50
    validates_presence_of :major
    validates_length_of :major, :maximum => 50
end
