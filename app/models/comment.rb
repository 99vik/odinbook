class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :author, class_name: 'User'

  validates :body, length: { minimum: 4 }
end
