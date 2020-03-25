class User < ApplicationRecord
  has_many :articles, foreign_key: 'author_id', class_name: 'Article'
  has_many :votes, foreign_key: 'user_id', class_name: 'Vote'
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
