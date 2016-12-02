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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161116201628) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apertura_cajas", force: :cascade do |t|
    t.integer  "monto_apertura"
    t.datetime "hora_apertura"
    t.datetime "hora_cierre"
    t.integer  "monto_cierre"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "persona_id"
    t.integer  "caja_id"
    t.index ["caja_id"], name: "index_apertura_cajas_on_caja_id", using: :btree
    t.index ["persona_id"], name: "index_apertura_cajas_on_persona_id", using: :btree
  end

  create_table "arqueo_cajas", force: :cascade do |t|
    t.datetime "fecha"
    t.integer  "monto_en_caja"
    t.integer  "monto_real"
    t.integer  "diferencia"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "caja_id"
    t.index ["caja_id"], name: "index_arqueo_cajas_on_caja_id", using: :btree
  end

  create_table "asientos", force: :cascade do |t|
    t.integer  "numero"
    t.datetime "fecha"
    t.integer  "debe"
    t.integer  "haber"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "ejercicio_id"
    t.integer  "factura_id"
    t.integer  "movimiento_caja_id"
    t.integer  "movimiento_de_cajas_detalle_id"
    t.index ["ejercicio_id"], name: "index_asientos_on_ejercicio_id", using: :btree
    t.index ["factura_id"], name: "index_asientos_on_factura_id", using: :btree
    t.index ["movimiento_caja_id"], name: "index_asientos_on_movimiento_caja_id", using: :btree
    t.index ["movimiento_de_cajas_detalle_id"], name: "index_asientos_on_movimiento_de_cajas_detalle_id", using: :btree
  end

  create_table "auditoria", force: :cascade do |t|
    t.datetime "fecha"
    t.time     "hora"
    t.string   "accion"
    t.string   "descripcion_de_suceso"
    t.integer  "personas_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["personas_id"], name: "index_auditoria_on_personas_id", using: :btree
  end

  create_table "barrios", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "distrito_id"
    t.index ["distrito_id"], name: "index_barrios_on_distrito_id", using: :btree
  end

  create_table "cajas", force: :cascade do |t|
    t.integer  "numero_caja"
    t.string   "estado"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cheques", force: :cascade do |t|
    t.string   "titular"
    t.string   "banco"
    t.integer  "numero_cheque"
    t.date     "fecha_disponibilidad"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "conceptos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "monto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cuentas", force: :cascade do |t|
    t.string   "nombre"
    t.string   "tipo"
    t.string   "codigo"
    t.string   "imputable"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "clase_padre"
  end

  create_table "cuentas_por_asientos", force: :cascade do |t|
    t.integer  "columna"
    t.integer  "monto"
    t.string   "observacion"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "asiento_id"
    t.integer  "cuentas_por_plan_id"
    t.index ["asiento_id"], name: "index_cuentas_por_asientos_on_asiento_id", using: :btree
    t.index ["cuentas_por_plan_id"], name: "index_cuentas_por_asientos_on_cuentas_por_plan_id", using: :btree
  end

  create_table "cuentas_por_planes", force: :cascade do |t|
    t.string   "descripcion"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "references"
    t.string   "plan_de_cuenta"
    t.integer  "cuenta_id"
    t.index ["cuenta_id"], name: "index_cuentas_por_planes_on_cuenta_id", using: :btree
  end

  create_table "departamentos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "pais_id"
    t.index ["pais_id"], name: "index_departamentos_on_pais_id", using: :btree
  end

  create_table "distritos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "departamento_id"
    t.index ["departamento_id"], name: "index_distritos_on_departamento_id", using: :btree
  end

  create_table "ejercicios", force: :cascade do |t|
    t.string   "anho"
    t.string   "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facturas", force: :cascade do |t|
    t.integer  "numero"
    t.datetime "fecha_expedicion"
    t.datetime "fecha_vencimiento"
    t.integer  "iva"
    t.integer  "total_a_pagar"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "persona_id"
    t.integer  "medidor_id"
    t.integer  "tipo_factura_id"
    t.integer  "servicio_id"
    t.index ["medidor_id"], name: "index_facturas_on_medidor_id", using: :btree
    t.index ["persona_id"], name: "index_facturas_on_persona_id", using: :btree
    t.index ["servicio_id"], name: "index_facturas_on_servicio_id", using: :btree
    t.index ["tipo_factura_id"], name: "index_facturas_on_tipo_factura_id", using: :btree
  end

  create_table "facturas_detalles", force: :cascade do |t|
    t.integer  "monto"
    t.integer  "IVA"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "concepto_id"
    t.integer  "lectura_id"
    t.integer  "factura_id"
    t.index ["concepto_id"], name: "index_facturas_detalles_on_concepto_id", using: :btree
    t.index ["factura_id"], name: "index_facturas_detalles_on_factura_id", using: :btree
    t.index ["lectura_id"], name: "index_facturas_detalles_on_lectura_id", using: :btree
  end

  create_table "formas_pagos", force: :cascade do |t|
    t.integer  "efectivo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "cheque_id"
    t.integer  "tarjeta_id"
    t.index ["cheque_id"], name: "index_formas_pagos_on_cheque_id", using: :btree
    t.index ["tarjeta_id"], name: "index_formas_pagos_on_tarjeta_id", using: :btree
  end

  create_table "lecturas", force: :cascade do |t|
    t.integer  "lectura_anterior"
    t.integer  "lectura_actual"
    t.date     "fecha_anterior"
    t.date     "fecha_actual"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "medidor_id"
    t.integer  "rango_fecha_id"
    t.index ["medidor_id"], name: "index_lecturas_on_medidor_id", using: :btree
    t.index ["rango_fecha_id"], name: "index_lecturas_on_rango_fecha_id", using: :btree
  end

  create_table "medidores", force: :cascade do |t|
    t.string   "descripcion"
    t.integer  "medidor_nro"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "servicio_id"
    t.integer  "persona_id"
    t.integer  "numero"
    t.index ["persona_id"], name: "index_medidores_on_persona_id", using: :btree
    t.index ["servicio_id"], name: "index_medidores_on_servicio_id", using: :btree
  end

  create_table "movimiento_de_cajas_detalles", force: :cascade do |t|
    t.integer  "monto_parcial"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "movimiento_caja_id"
    t.integer  "factura_id"
    t.integer  "valores_de_pago_id"
    t.index ["factura_id"], name: "index_movimiento_de_cajas_detalles_on_factura_id", using: :btree
    t.index ["movimiento_caja_id"], name: "index_movimiento_de_cajas_detalles_on_movimiento_caja_id", using: :btree
    t.index ["valores_de_pago_id"], name: "index_movimiento_de_cajas_detalles_on_valores_de_pago_id", using: :btree
  end

  create_table "movimientos_cajas", force: :cascade do |t|
    t.string   "tipo"
    t.string   "descripcion"
    t.integer  "monto_total"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "apertura_caja_id"
    t.integer  "persona_id"
    t.datetime "fecha"
    t.integer  "caja_id"
    t.index ["apertura_caja_id"], name: "index_movimientos_cajas_on_apertura_caja_id", using: :btree
    t.index ["caja_id"], name: "index_movimientos_cajas_on_caja_id", using: :btree
    t.index ["persona_id"], name: "index_movimientos_cajas_on_persona_id", using: :btree
  end

  create_table "ordenes_consumos_detalles", force: :cascade do |t|
    t.integer  "monto"
    t.integer  "IVA"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "lectura_id"
    t.integer  "concepto_id"
    t.integer  "ordenes_de_consumo_id"
    t.index ["concepto_id"], name: "index_ordenes_consumos_detalles_on_concepto_id", using: :btree
    t.index ["lectura_id"], name: "index_ordenes_consumos_detalles_on_lectura_id", using: :btree
    t.index ["ordenes_de_consumo_id"], name: "index_ordenes_consumos_detalles_on_ordenes_de_consumo_id", using: :btree
  end

  create_table "ordenes_de_consumos", force: :cascade do |t|
    t.integer  "total_a_pagar"
    t.datetime "fecha_expedicion"
    t.datetime "fecha_vencimiento"
    t.integer  "IVA"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "tipo_factura_id"
    t.integer  "medidor_id"
    t.integer  "persona_id"
    t.integer  "servicio_id"
    t.integer  "numero"
    t.index ["medidor_id"], name: "index_ordenes_de_consumos_on_medidor_id", using: :btree
    t.index ["persona_id"], name: "index_ordenes_de_consumos_on_persona_id", using: :btree
    t.index ["servicio_id"], name: "index_ordenes_de_consumos_on_servicio_id", using: :btree
    t.index ["tipo_factura_id"], name: "index_ordenes_de_consumos_on_tipo_factura_id", using: :btree
  end

  create_table "paises", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personas", force: :cascade do |t|
    t.string   "nacionalidad"
    t.string   "nombre"
    t.string   "direccion"
    t.string   "ruc"
    t.integer  "telefono"
    t.integer  "ci_numero"
    t.string   "correo"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "tipo_persona_id"
    t.integer  "barrio_id"
    t.index ["barrio_id"], name: "index_personas_on_barrio_id", using: :btree
    t.index ["tipo_persona_id"], name: "index_personas_on_tipo_persona_id", using: :btree
  end

  create_table "plan_de_cuentas", force: :cascade do |t|
    t.string   "version"
    t.string   "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rango_fechas", force: :cascade do |t|
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "roles_por_usuarios", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "usuario_id"
    t.index ["usuario_id"], name: "index_roles_por_usuarios_on_usuario_id", using: :btree
  end

  create_table "servicios", force: :cascade do |t|
    t.integer  "consumo_minimo"
    t.integer  "costo_unitario"
    t.string   "unidad_medida"
    t.string   "descripcion"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "tarjetas", force: :cascade do |t|
    t.integer  "nro_verificacion"
    t.string   "titular"
    t.string   "categoria_tarjeta"
    t.string   "tipo_tarjeta"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "tipo_facturas", force: :cascade do |t|
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tipos_personas", force: :cascade do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tpersonas", force: :cascade do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nickname"
    t.string   "clave"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "persona_id"
    t.index ["persona_id"], name: "index_usuarios_on_persona_id", using: :btree
  end

  create_table "valores_de_pagos", force: :cascade do |t|
    t.integer  "monto_por_forma_pago"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "factura_id"
    t.integer  "formas_pago_id"
    t.index ["factura_id"], name: "index_valores_de_pagos_on_factura_id", using: :btree
    t.index ["formas_pago_id"], name: "index_valores_de_pagos_on_formas_pago_id", using: :btree
  end

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree
  end

  add_foreign_key "apertura_cajas", "cajas"
  add_foreign_key "apertura_cajas", "personas"
  add_foreign_key "arqueo_cajas", "cajas"
  add_foreign_key "asientos", "ejercicios"
  add_foreign_key "asientos", "facturas"
  add_foreign_key "asientos", "movimiento_de_cajas_detalles"
  add_foreign_key "asientos", "movimientos_cajas"
  add_foreign_key "auditoria", "personas", column: "personas_id"
  add_foreign_key "barrios", "distritos"
  add_foreign_key "cuentas_por_asientos", "asientos"
  add_foreign_key "cuentas_por_asientos", "cuentas_por_planes"
  add_foreign_key "cuentas_por_planes", "cuentas"
  add_foreign_key "departamentos", "paises"
  add_foreign_key "distritos", "departamentos"
  add_foreign_key "facturas", "medidores"
  add_foreign_key "facturas", "personas"
  add_foreign_key "facturas", "servicios"
  add_foreign_key "facturas", "tipo_facturas"
  add_foreign_key "facturas_detalles", "conceptos"
  add_foreign_key "facturas_detalles", "facturas"
  add_foreign_key "facturas_detalles", "lecturas"
  add_foreign_key "formas_pagos", "cheques"
  add_foreign_key "formas_pagos", "tarjetas"
  add_foreign_key "lecturas", "medidores"
  add_foreign_key "lecturas", "rango_fechas"
  add_foreign_key "medidores", "personas"
  add_foreign_key "medidores", "servicios"
  add_foreign_key "movimiento_de_cajas_detalles", "facturas"
  add_foreign_key "movimiento_de_cajas_detalles", "movimientos_cajas"
  add_foreign_key "movimiento_de_cajas_detalles", "valores_de_pagos"
  add_foreign_key "movimientos_cajas", "apertura_cajas"
  add_foreign_key "movimientos_cajas", "cajas"
  add_foreign_key "movimientos_cajas", "personas"
  add_foreign_key "ordenes_consumos_detalles", "conceptos"
  add_foreign_key "ordenes_consumos_detalles", "lecturas"
  add_foreign_key "ordenes_consumos_detalles", "ordenes_de_consumos"
  add_foreign_key "ordenes_de_consumos", "medidores"
  add_foreign_key "ordenes_de_consumos", "personas"
  add_foreign_key "ordenes_de_consumos", "servicios"
  add_foreign_key "ordenes_de_consumos", "tipo_facturas"
  add_foreign_key "personas", "barrios"
  add_foreign_key "personas", "tipos_personas"
  add_foreign_key "roles_por_usuarios", "usuarios"
  add_foreign_key "usuarios", "personas"
  add_foreign_key "valores_de_pagos", "facturas"
  add_foreign_key "valores_de_pagos", "formas_pagos", column: "formas_pago_id"
end
