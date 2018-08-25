class Registration < ApplicationRecord
  validates :name, uniqueness: true, presence: { message: "Registration has already been done with this Name" } 
  validates :email, uniqueness: true, presence: { message: "Registration has already been done with this email" }
  validates :usn, uniqueness: true, presence: { message: "Registration has already been done with this USN}" }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
