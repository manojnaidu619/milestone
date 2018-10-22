class Event < ApplicationRecord
  has_many_attached :image                    # Event has many images
  belongs_to :coordinator                    # Each event belongs to a coordinator
  validates :title, presence: true, length: { minimum: 15, maximum: 45 }
  validates :description, presence:true, length: { minimum: 30 }

  extend FriendlyId                      # For friendly-id
  friendly_id :title, use: [:slugged, :history]

  def should_generate_new_friendly_id?     # Method given by friendly_id
  title_changed?                           # Create new slug if the title gets updated
  end

end
