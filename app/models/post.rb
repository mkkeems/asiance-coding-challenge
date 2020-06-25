class Post < ApplicationRecord
  belongs_to :author
  validates :title, :body, :image_url, presence: true
end
