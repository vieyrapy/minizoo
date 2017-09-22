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

ActiveRecord::Schema.define(version: 20170922223655) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alimentos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animales", force: :cascade do |t|
    t.string "nombre_cientifico"
    t.string "nombre_comun"
    t.boolean "macho"
    t.integer "edad"
    t.string "origen"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "alimento_id"
    t.integer "cite_id"
    t.integer "especie_id"
    t.integer "estado_conservacion_id"
  end

  create_table "articulos", force: :cascade do |t|
    t.string "titulo"
    t.string "descripcion"
    t.string "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cites", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "especies", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estado_conservaciones", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ficha_medicas", force: :cascade do |t|
    t.datetime "fecha_ingreso"
    t.string "estado_salud"
    t.string "enfermedad"
    t.string "dolencia"
    t.string "descripcion"
    t.string "archivos"
    t.boolean "internacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "animal_id"
  end

  create_table "internados", force: :cascade do |t|
    t.string "medicamento"
    t.string "dosis"
    t.datetime "fecha_inicio"
    t.datetime "fecha_fin"
    t.string "descripcion"
    t.boolean "dar_alta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ficha_medica_id"
  end

  add_foreign_key "animales", "alimentos"
  add_foreign_key "animales", "cites"
  add_foreign_key "animales", "especies"
  add_foreign_key "animales", "estado_conservaciones"
  add_foreign_key "ficha_medicas", "animales"
  add_foreign_key "internados", "ficha_medicas"
end
