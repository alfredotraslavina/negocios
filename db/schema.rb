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

ActiveRecord::Schema.define(version: 20170812051659) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conteos", force: :cascade do |t|
    t.string "nombreobjeto"
    t.string "marca"
    t.string "modelo"
    t.integer "precio"
    t.integer "cantidad"
    t.integer "peso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invens", force: :cascade do |t|
    t.string "nombre_objeto"
    t.string "marca"
    t.string "modelo"
    t.decimal "precio"
    t.integer "cantidad"
    t.decimal "peso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventarios", force: :cascade do |t|
    t.string "nombre_objeto"
    t.string "marca"
    t.string "modelo"
    t.integer "numero_objetos"
    t.datetime "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invs", force: :cascade do |t|
    t.string "nombre_objeto"
    t.string "marca"
    t.string "modelo"
    t.decimal "precio"
    t.integer "cantidad"
    t.decimal "peso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
