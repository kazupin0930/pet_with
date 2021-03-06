class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many   :likes
  belongs_to :pet, optional: true
  has_many   :cats
  has_many   :dogs
  has_many   :messages

  validates :nickname,       presence: true
  validates :keep_pet,       presence: true
  validates :number_of_pets, presence: true
end
