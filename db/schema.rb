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

ActiveRecord::Schema.define(version: 20171201022408) do

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
    t.string "origen"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "alimento_id"
    t.integer "cite_id"
    t.integer "estado_conservacion_id"
    t.string "sexo"
    t.string "identificador"
    t.string "familia"
    t.datetime "edad"
    t.integer "especie_id"
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

  create_table "estado_medicos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.datetime "start"
    t.datetime "end"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ficha_medicas", force: :cascade do |t|
    t.string "enfermedad"
    t.string "dolencia"
    t.string "descripcion"
    t.string "archivos"
    t.boolean "internacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "animal_id"
    t.string "audio"
    t.string "video"
    t.string "veterinario"
    t.boolean "activo"
    t.boolean "tratamiento"
    t.integer "estado_medico_id"
    t.boolean "alta_cuarentena"
  end

  create_table "tareas", force: :cascade do |t|
    t.datetime "fecha"
    t.boolean "terminado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ficha_medica_id"
    t.string "medicamento"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "name", default: "", null: false
    t.integer "role"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "animales", "alimentos"
  add_foreign_key "animales", "cites"
  add_foreign_key "animales", "especies"
  add_foreign_key "animales", "estado_conservaciones"
  add_foreign_key "ficha_medicas", "animales"
  add_foreign_key "ficha_medicas", "estado_medicos"
  add_foreign_key "tareas", "ficha_medicas"
end
