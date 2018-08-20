class Avatar < ApplicationRecord
  belongs_to :coordinator
  has_one_attached :avatar
end
