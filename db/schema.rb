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

ActiveRecord::Schema.define(version: 2021_05_03_014849) do

  create_table "parties", force: :cascade do |t|
    t.string "name"
    t.integer "pokemon_id"
    t.integer "trainer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "pokemon2_id"
    t.integer "pokemon3_id"
    t.integer "pokemon4_id"
    t.integer "pokemon5_id"
    t.integer "pokemon6_id"
  end

  create_table "party_pokemons", force: :cascade do |t|
    t.string "pokemon_name"
    t.string "pokemon_species"
    t.integer "pokedex_entry"
    t.string "type_1"
    t.string "type_2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "species"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "type_1"
    t.string "type_2"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
