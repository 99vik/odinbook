class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'

  validates :body, length: { minimum: 8 }
end
