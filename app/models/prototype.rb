class Prototype < ApplicationRecord
  belongs_to :user
  has_many   :comments, dependent: :destroy

  has_one_attached :image

  validates :name,           presence: true
  validates :recommendation, presence: true
  validates :explanation,    presence: true
  validates :image,          presence: true

  validates :category_id, numericality: { other_than: 1 }
end
