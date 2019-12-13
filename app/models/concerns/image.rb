class Image < ApplicationRecord
  has_attached_file :picture, styles: {large: "600x600>", thumb: "50x50>"}
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
  validates :picture, presence: true
end
