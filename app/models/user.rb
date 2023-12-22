class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence:true, uniqueness: true
  validates :email, presence:true, uniqueness: true
  validates :password, presence:true, length: { in: 6..20 }

  has_many :created_events, foreign_key: "creator_id", class_name: "Event"
end
