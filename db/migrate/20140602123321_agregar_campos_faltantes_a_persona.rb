class AgregarCamposFaltantesAPersona < ActiveRecord::Migration
  def up
  	add_column :personas, :establecimiento_id, :integer
  	add_column :personas, :tipo_gestion_id, :integer
  	add_column :personas, :servicio_transporte, :string
  	add_column :personas, :rol, :string
  	add_column :personas, :grado_anio_alumno, :integer
  	add_column :personas, :regular, :boolean
  	add_column :personas, :activo_pasivo_docente, :boolean
  	add_column :personas, :frente_alumnos, :boolean
  	add_column :personas, :grado_docente, :string
  	add_column :personas, :turno_docente, :string
  	add_column :personas, :activo_pasivo_aux, :boolean
  	add_column :personas, :lugar_auxiliares, :string
  	add_column :personas, :cant_cuadras, :integer
  	add_column :personas, :distancia_km, :float
  end

  def down
  	remove_column :personas, :establecimiento_id
  	remove_column :personas, :tipo_gestion_id
  	remove_column :personas, :servicio_transporte
  	remove_column :personas, :rol
  	remove_column :personas, :grado_anio_alumno
  	remove_column :personas, :regular
  	remove_column :personas, :activo_pasivo_docente
  	remove_column :personas, :frente_alumnos
  	remove_column :personas, :grado_docente
  	remove_column :personas, :turno_docente
  	remove_column :personas, :activo_pasivo_aux
  	remove_column :personas, :lugar_auxiliares
  	remove_column :personas, :cant_cuadras
  	remove_column :personas, :distancia_km
  end
end
    
    
