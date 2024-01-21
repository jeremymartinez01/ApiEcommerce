# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_01_21_214921) do
  create_table "categoria", primary_key: "cid", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detalles", primary_key: "detid", force: :cascade do |t|
    t.integer "orden_oid"
    t.integer "producto_pid"
    t.integer "cantidad"
    t.datetime "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "domicilios", primary_key: "did", force: :cascade do |t|
    t.integer "usuario_id"
    t.string "ciudad"
    t.string "sector"
    t.string "calle_principal"
    t.string "calle_secundaria"
    t.integer "villa"
    t.string "cod_postal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "metodo_pagos", primary_key: "mpid", force: :cascade do |t|
    t.string "metodo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ordens", primary_key: "oid", force: :cascade do |t|
    t.integer "usuario_uid"
    t.integer "mpago_mpid"
    t.integer "domicilio_did"
    t.datetime "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", primary_key: "pid", force: :cascade do |t|
    t.integer "usuario_id"
    t.integer "categoria"
    t.string "nombre"
    t.string "descripcion"
    t.decimal "precio"
    t.string "imagen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", primary_key: "uid", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "cedula"
    t.string "telefono"
    t.string "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
