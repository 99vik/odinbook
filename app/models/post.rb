class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_one_attached :image

  validates :body, length: { minimum: 8 }
end
