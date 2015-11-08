class Pin < ActiveRecord::Base
    
    validates :description, presence: true
    validates :image, presence: true

has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "100x100>" }
validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
validates_attachment :image, presence: true,
size: { in: 0..5.megabytes }


belongs_to :user    
end
