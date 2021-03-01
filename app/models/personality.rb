class Personality < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '好奇心旺盛' },
    { id: 3, name: '人懐っこい' },
    { id: 4, name: '恥ずかしがり屋' },
    { id: 5, name: '臆病' },
    { id: 6, name: '穏やか' },
    { id: 7, name: '甘えん坊' },
    { id: 8, name: '天真爛漫' },
    { id: 9, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :dogs
  has_many :cats
end