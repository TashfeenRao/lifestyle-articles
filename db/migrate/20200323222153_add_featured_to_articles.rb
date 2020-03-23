class AddFeaturedToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :featured, :boolean
  end
end
