class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments

  validates :body, length: { minimum: 8 }
end
