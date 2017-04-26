class Member < ActiveRecord::Base
    has_attached_file :image, styles: {small: "150x150#"}
    validates_attachment_content_type :image, :content_type => ["image/jpeg","image/png"]
    
    has_secure_password
    
    belongs_to :position
    belongs_to :division
    
    EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i 
    validates_presence_of :name
    validates_length_of :name, :maximum => 50
    validates_presence_of :email
    validates_length_of :email, :maximum => 70
    validates_format_of :email, :with => EMAIL_REGEX
    validates_presence_of :major
    validates_length_of :major, :maximum => 50
    validates_presence_of :grad_year
    validates_length_of :grad_year, :maximum => 4
    validates_numericality_of :grad_year, :only_integer => true
    validates_presence_of :member_since
    validates_length_of :member_since, :maximum => 4
    validates_numericality_of :member_since, :only_integer => true
    validates_presence_of :hometown
    validates_length_of :hometown, :maximum => 50
end
