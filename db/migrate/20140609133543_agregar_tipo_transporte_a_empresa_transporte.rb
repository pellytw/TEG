class AgregarTipoTransporteAEmpresaTransporte < ActiveRecord::Migration
   def up
  	add_column :empresa_transportes, :tipo_transporte_id, :integer
  end

  def down
  	remove_column :empresa_transportes, :tipo_transporte_id
  end
end
