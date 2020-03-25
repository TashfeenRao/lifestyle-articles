class Article < ApplicationRecord
  has_one_attached :image
  belongs_to :author, class_name: 'User'
  belongs_to :category, class_name: 'Category'
  has_many :votes, foreign_key: 'article_id', class_name: 'Vote'
  validates :title, presence: true
  validates :text, presence: true
  validates :image, presence: true
end
