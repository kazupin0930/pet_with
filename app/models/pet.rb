class Pet < ApplicationRecord

  belongs_to :user, optional: true
  has_many   :dogs
  has_many   :cats
  belongs_to :message
end
