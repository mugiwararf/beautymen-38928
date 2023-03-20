class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  belongs_to :year
  belongs_to :skin
  has_many   :prototypes
  has_many   :comments

  with_options presence: true do
  validates :nickname
  validates :year_id
  validates :skin_id
  end

  with_options numericality: { other_than: 1  } do
  validates :year_id
  validates :skin_id
  end

end
