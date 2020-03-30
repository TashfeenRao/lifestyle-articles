class Article < ApplicationRecord
  has_one_attached :image
  belongs_to :author, class_name: 'User'
  has_many :multis, foreign_key:"article_id" , class_name:"Multi"
  has_many :category, through: :multis
  has_many :votes, foreign_key: 'article_id', class_name: 'Vote'
  validates :title, presence: true
  validates :text, presence: true
end
