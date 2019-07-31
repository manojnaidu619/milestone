class Profile < ApplicationRecord
  has_one_attached :avatar           # Profile Picture is here named as 'avatar'
  belongs_to :coordinator
end
