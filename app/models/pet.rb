class Pet < ApplicationRecord

  belongs_to :user, optional: true
  has_many   :dogs
  has_many   :cats
  has_many   :messages
end
