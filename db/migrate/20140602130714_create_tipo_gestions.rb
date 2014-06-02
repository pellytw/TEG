class CreateTipoGestions < ActiveRecord::Migration
  def change
    create_table :tipo_gestions do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
