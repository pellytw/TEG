class CreateBonos < ActiveRecord::Migration
  def change
    create_table :bonos do |t|
      t.string :nro_bono
      t.integer :empresa_id
      t.integer :persona_id
      t.integer :cant_pasajes
      t.datetime :fecha_emision
      t.datetime :fecha_entregado
      t.string :descripcion
      t.boolean :entregado
      t.integer :emisor

      t.timestamps
    end
  end
end
