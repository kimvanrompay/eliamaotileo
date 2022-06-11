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

ActiveRecord::Schema[7.0].define(version: 2022_06_10_233917) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aankoopfacturens", force: :cascade do |t|
    t.string "bedrijfsnaam"
    t.string "adres"
    t.string "land"
    t.string "postcode"
    t.string "btw"
    t.string "klantnummer"
    t.string "factuurnummer"
    t.text "description"
    t.integer "excl_bedrag"
    t.date "factuurdatum"
    t.date "vervaldatum"
    t.string "rekeningnummer"
    t.string "begunstigde"
    t.string "mededeling"
    t.string "factuur_mail"
    t.boolean "betaald"
    t.boolean "bevestigd"
    t.boolean "recurrent"
    t.text "opmerking"
    t.text "staving"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "bedrijfsnaam"
    t.string "contactnaam"
    t.string "email"
    t.string "tel"
    t.text "onderwerp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string "fnummer"
    t.date "datum"
    t.string "bedrijfsnaam"
    t.string "adres1"
    t.string "adres2"
    t.string "postcode"
    t.string "stad"
    t.string "email"
    t.text "beschrijving"
    t.decimal "bedragexcl"
    t.decimal "btw"
    t.decimal "bedragincl"
    t.text "opmerkingen"
    t.string "barcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
