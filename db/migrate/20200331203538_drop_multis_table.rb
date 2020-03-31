class DropMultisTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :multis
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
