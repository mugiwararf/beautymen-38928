class Prototype < ApplicationRecord
  belongs_to :user
  has_many   :comments, dependent: :destroy
  has_many   :likes,    dependent: :destroy

  


  has_one_attached :image

  with_options presence: true do
  validates :name           
  validates :recommendation
  validates :explanation
  validates :category_id
  validates :image
  end   

  validates :category_id, numericality: { other_than: 1 }

  def self.search(search)
    if search != ""
      Prototype.where('recommendation LIKE(?)', "%#{search}%")
    else
      Prototype.all
    end
  end
end
