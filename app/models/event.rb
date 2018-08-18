class Event < ApplicationRecord
  has_many_attached :image                    # Event has many images
  belongs_to :coordinator                    # Each event belongs to a coordinator
  validates_presence_of :title
  validates_presence_of :description

end
