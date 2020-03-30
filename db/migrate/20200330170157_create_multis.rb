class CreateMultis < ActiveRecord::Migration[6.0]
  def change
    create_table :multis do |t|
      t.integer :article_id
      t.integer :category_id

      t.timestamps
    end
  end
end
