class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '洗顔料' },
    { id: 3, name: 'クレンジング' },
    { id: 4, name: '化粧水' },
    { id: 5, name: '乳液、美容液' },
    { id: 6, name:   'オールインワン' },
    { id: 7, name: 'パック、フェイスマスク' },
    { id: 8, name: 'その他スキンケア' }, 
  ]

  include ActiveHash::Associations
  has_many :prototypes
end