class Category < ApplicationRecord
    has_many :articles, foreign_key: "category_id", class_name: "Article"

    validates :name, presence: true
    validates :priority, presence: true
end
