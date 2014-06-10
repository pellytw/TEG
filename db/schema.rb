# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140610114124) do

  create_table "empresa_transportes", :force => true do |t|
    t.string   "nombre"
    t.integer  "localidad_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "tipo_transporte_id"
  end

  create_table "establecimientos", :force => true do |t|
    t.string   "codigo_jurisdiccional"
    t.integer  "cue"
    t.integer  "anexo"
    t.integer  "cue_anexo"
    t.string   "sector"
    t.string   "ambito"
    t.string   "nombre"
    t.integer  "localidad_id"
    t.string   "domicilio"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "estado_civils", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "localidads", :force => true do |t|
    t.string   "nombre"
    t.integer  "region_id"
    t.integer  "cp"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "nivels", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "persona_establecimientos", :force => true do |t|
    t.integer  "persona_id"
    t.integer  "establecimiento_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "cant_cuadras"
    t.integer  "cant_km"
  end

  create_table "personas", :force => true do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.integer  "tipo_documento_id"
    t.integer  "nro_documento"
    t.string   "calle"
    t.integer  "nro_calle"
    t.string   "piso"
    t.string   "depto"
    t.integer  "estado_civil_id"
    t.integer  "sexo_id"
    t.date     "fecha_nacimiento"
    t.integer  "localidad_id"
    t.integer  "situacion_revista_id"
    t.string   "telefono_contacto"
    t.string   "email"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "establecimiento_id"
    t.integer  "tipo_gestion_id"
    t.string   "servicio_transporte"
    t.string   "rol"
    t.integer  "grado_anio_alumno"
    t.boolean  "regular"
    t.boolean  "activo_pasivo_docente"
    t.boolean  "frente_alumnos"
    t.string   "grado_docente"
    t.string   "turno_docente"
    t.boolean  "activo_pasivo_aux"
    t.string   "lugar_auxiliares"
    t.integer  "cant_cuadras"
    t.float    "distancia_km"
    t.integer  "user_id"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 8
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "regions", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "role_permissions", :force => true do |t|
    t.integer  "role_id"
    t.string   "regulator"
    t.string   "conduct"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "role_roles", :force => true do |t|
    t.integer  "role_id"
    t.integer  "parent_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "sexos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "situacion_revista", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_documentos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_gestions", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_transportes", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tramos", :force => true do |t|
    t.integer  "persona_id"
    t.integer  "localidad_origen_id"
    t.integer  "localidad_destino_id"
    t.integer  "empresa_transporte_id"
    t.integer  "lunes_cant"
    t.integer  "martes_cant"
    t.integer  "miercoles_cant",        :default => 0
    t.integer  "jueves_cant"
    t.integer  "viernes_cant"
    t.integer  "sabado_cant"
    t.integer  "domingo_cant"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  create_table "user_roles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "apellidos"
    t.string   "nombres"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "utils", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
