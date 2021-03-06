class Dog < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :personality
  belongs_to :age
  belongs_to :sex
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :pet_name
    validates :kind
  end

  with_options numericality: { other_than: 1 } do
    validates :personality_id, numericality: { message: 'Select' }
    validates :age_id, numericality:  { message: 'Select' }
    validates :sex_id, numericality: { message: 'Select' }
  end

  def was_attached?
    image.attached?
  end
end
