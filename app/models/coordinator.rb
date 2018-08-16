class Coordinator < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :clubs                                                 # asscociation with club
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
