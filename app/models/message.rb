class Message < ApplicationRecord

  has_many   :users
  belongs_to :pet
end
