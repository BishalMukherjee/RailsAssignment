class Person < ApplicationRecord
  validates :email, null: false
  validates :name, null: false, uniqueness: true
end