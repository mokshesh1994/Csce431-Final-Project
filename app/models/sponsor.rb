class Sponsor < ActiveRecord::Base
    has_attached_file :image, styles: {small: "150x150#"}
    validates_attachment_content_type :image, :content_type => ["image/jpeg","image/png"]
    validates_presence_of :name
    validates_length_of :name, :maximum => 40
    validates_presence_of :spn_type
    validates_length_of :spn_type, :maximum => 40
end
