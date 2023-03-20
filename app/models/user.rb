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

  validates :nickname, presence: true

  validates :year_id, numericality: { other_than: 1 } 
  validates :skin_id, numericality: { other_than: 1 }


end
