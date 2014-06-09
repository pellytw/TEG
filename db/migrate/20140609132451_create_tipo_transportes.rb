class CreateTipoTransportes < ActiveRecord::Migration
  def change
    create_table :tipo_transportes do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
