class Chat < ApplicationRecord

  belongs_to :pet
  has_many   :users
end
