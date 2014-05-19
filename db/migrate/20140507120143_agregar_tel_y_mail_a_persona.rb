class AgregarTelYMailAPersona < ActiveRecord::Migration
  def up
  	add_column :personas, :telefono_contacto, :string
  	add_column :personas, :email, :string
  end

  def down
  	remove_column :personas, :telefono_contacto
  	remove_column :personas, :email
  end
end
