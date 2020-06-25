class Author < ApplicationRecord
  has_many :posts, :dependent => :destroy
  validates :name, :role, :avatar, :location, presence: true
end
