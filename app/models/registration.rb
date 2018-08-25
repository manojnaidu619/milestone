class Registration < ApplicationRecord
  validates_presence_of :name, :section, :usn, :email
end
