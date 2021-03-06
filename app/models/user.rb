class User < ApplicationRecord
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable, :timeoutable, :omniauthable

  has_many :lists, dependent: :destroy
  has_many :articles, dependent: :destroy

  validates :firstname, presence: true
  validates :lastname, presence: true
end
