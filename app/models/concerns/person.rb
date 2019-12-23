class Person < ApplicationRecord
  validates :email, null: false
  validates :name, null: false, uniqueness: true
  scope :search_result, ->(query) { where("name LIKE :search OR email LIKE :search", search: "%#{query}%") }
end