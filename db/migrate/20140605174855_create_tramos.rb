class CreateTramos < ActiveRecord::Migration
  def change
    create_table :tramos do |t|
      t.integer :persona_id
      t.integer :localidad_origen_id
      t.integer :localidad_destino_id
      t.integer :empresa_transporte_id
      t.integer :lunes_cant
      t.integer :martes_cant
      t.integer :miercoles_cant
      t.integer :jueves_cant
      t.integer :viernes_cant
      t.integer :sabado_cant
      t.integer :domingo_cant

      t.timestamps
    end
  end
end
