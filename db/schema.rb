ActiveRecord::Schema[7.0].define(version: 2022_05_04_051420) do

  enable_extension "plpgsql"

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.integer "identification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "breed"
    t.boolean "pedigree"
    t.bigint "owner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_pets_on_owner_id"
  end

  add_foreign_key "pets", "owners"
end
