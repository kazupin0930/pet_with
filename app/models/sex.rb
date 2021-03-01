class Sex < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '♂' },
    { id: 3, name: '♀' },
  ]

  include ActiveHash::Associations
  has_many :dogs
  has_many :cats
end