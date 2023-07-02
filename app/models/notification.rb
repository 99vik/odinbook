class Notification < ApplicationRecord
    belongs_to :notifier, class_name: 'User'
end
