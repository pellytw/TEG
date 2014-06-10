class AgregarTipoTransporteAEmpresaTransporte < ActiveRecord::Migration
   ef up
  	add_column :empresa_transportes, :tipo_transporte_id, :integer
  end

  def down
  	remove_column :empresa_transportes, :tipo_transporte_id
  end
end
