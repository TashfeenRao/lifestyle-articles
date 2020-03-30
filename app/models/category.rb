class Category < ApplicationRecord
    has_many :multis, foreign_key:"category_id" , class_name:"Multi"
    has_many :article, through: :multis
    validates :name, presence: true
    validates :priority, presence: true
end
