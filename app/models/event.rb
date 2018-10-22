class Event < ApplicationRecord
  has_many_attached :image                    # Event has many images
  belongs_to :coordinator                    # Each event belongs to a coordinator
  validates :title, presence: true, length: { minimum: 15, maximum: 45 }
  validates :description, presence:true, length: { minimum: 30 }

  extend FriendlyId                      # For friendly-id
  friendly_id :title, use: [:slugged]
end
