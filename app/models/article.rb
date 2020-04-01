class Article < ApplicationRecord
  has_one_attached :image
  belongs_to :author, class_name: 'User'
  has_many :article_categories
  has_many :categories, through: :article_categories
  has_many :votes, foreign_key: 'article_id', class_name: 'Vote'
  validates :title, presence: true
  validates :image, presence: true
  validates :text, presence: true
end
