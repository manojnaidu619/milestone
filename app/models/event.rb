class Event < ApplicationRecord
  belongs_to :coordinator                    # Each event belongs to a coordinator
  validates_presence_of :title
  validates_presence_of :description
end
