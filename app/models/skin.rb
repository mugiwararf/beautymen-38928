class Skin < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '普通肌' },
    { id: 3, name: '脂性肌' },
    { id: 4, name: '乾燥肌' },
    { id: 5, name: '混合肌' },
   
  ]

  include ActiveHash::Associations
  has_many :user
end