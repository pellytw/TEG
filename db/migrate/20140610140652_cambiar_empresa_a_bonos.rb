class CambiarEmpresaABonos < ActiveRecord::Migration
  def up
  	rename_column :bonos, :empresa_id, :empresa_transporte_id
  end

  def down
  end
end
