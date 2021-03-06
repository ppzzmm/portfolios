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

ActiveRecord::Schema[7.0].define(version: 20_220_512_195_217) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'portfolios', force: :cascade do |t|
    t.string 'investor_name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'stocks', force: :cascade do |t|
    t.string 'company'
    t.integer 'price'
    t.integer 'investment'
    t.integer 'profit'
    t.date 'opening_date'
    t.bigint 'portfolio_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['portfolio_id'], name: 'index_stocks_on_portfolio_id'
  end

  add_foreign_key 'stocks', 'portfolios'
end
