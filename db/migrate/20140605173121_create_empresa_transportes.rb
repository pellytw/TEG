class CreateEmpresaTransportes < ActiveRecord::Migration
  def change
    create_table :empresa_transportes do |t|
      t.string :nombre
      t.integer :localidad_id

      t.timestamps
    end
  end
end
