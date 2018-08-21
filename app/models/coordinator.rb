class Coordinator < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :profile, dependent: :destroy                                            # Association with profile                                   
  has_many :clubs, dependent: :destroy                                                # asscociation with club
  has_many :events, dependent: :destroy                                               # Each Coordinator has many clubs
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
