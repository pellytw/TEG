class CreatePepes < ActiveRecord::Migration
  def change
    create_table :pepes do |t|
      t.integer :nro
      t.string :nombre
      t.boolean :algo
      t.text :algo2

      t.timestamps
    end
  end
end
