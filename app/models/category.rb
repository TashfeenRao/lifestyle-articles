class Category < ApplicationRecord
<<<<<<< HEAD
    has_many :articles, foreign_key: "category_id", class_name: "Article"

    validates :name, presence: true
    validates :priority, presence: true
=======
  has_many :articles, foreign_key: 'category_id', class_name: 'Article'
>>>>>>> development
end
