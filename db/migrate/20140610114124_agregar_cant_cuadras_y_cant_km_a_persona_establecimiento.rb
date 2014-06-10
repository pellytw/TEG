class AgregarCantCuadrasYCantKmAPersonaEstablecimiento < ActiveRecord::Migration
  def up
  	add_column :persona_establecimientos, :cant_cuadras, :integer
  	add_column :persona_establecimientos, :cant_km, :integer
  end

  def down
  	remove_column :persona_establecimientos, :cant_cuadras
  	remove_column :persona_establecimientos, :cant_km
  end
end
