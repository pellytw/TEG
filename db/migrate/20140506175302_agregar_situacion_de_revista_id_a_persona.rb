class AgregarSituacionDeRevistaIdAPersona < ActiveRecord::Migration
  def up
  	add_column :personas, :situacion_revista_id, :integer
  end

  def down
  	remove_column :personas, :situacion_revista_id
  end
end
