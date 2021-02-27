class Pet < ApplicationRecord

  belongs_to :user
  has_many :dogs
  has_many :cats
end
