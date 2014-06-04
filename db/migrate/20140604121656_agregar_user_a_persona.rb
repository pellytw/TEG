class AgregarUserAPersona < ActiveRecord::Migration
  def up
  	add_column :personas, :user_id, :integer
  end

  def down
  	remove_column :personas, :user_id
  end
end
