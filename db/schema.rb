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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170103193613) do

  create_table "boletos", force: :cascade do |t|
    t.decimal  "preco",               precision: 8, scale: 2
    t.date     "vencimento"
    t.text     "descricao"
    t.integer  "parcelas"
    t.boolean  "situacao"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.integer  "obra_id"
    t.string   "fatura_file_name"
    t.string   "fatura_content_type"
    t.integer  "fatura_file_size"
    t.datetime "fatura_updated_at"
  end

  create_table "climas", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "controle_de_obras", force: :cascade do |t|
    t.date     "data"
    t.integer  "nf"
    t.string   "fornecedor"
    t.decimal  "recebido",   precision: 8, scale: 2
    t.decimal  "pago",       precision: 8, scale: 2
    t.integer  "obra_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "controle_de_obras", ["obra_id"], name: "index_controle_de_obras_on_obra_id"

  create_table "documentos", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "obra_id"
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string   "name"
    t.string   "phone",       limit: 15
    t.string   "rg",          limit: 20
    t.string   "cpf",         limit: 11
    t.string   "adress"
    t.string   "ctps"
    t.date     "in_date"
    t.date     "out_date"
    t.integer  "obra_id"
    t.integer  "function_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "report_id"
  end

  create_table "functions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "galeria", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "obra_id"
  end

  create_table "images", force: :cascade do |t|
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
    t.integer  "galerium_id"
  end

  create_table "obras", force: :cascade do |t|
    t.string   "name"
    t.string   "locale"
    t.date     "start_date"
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "pictures", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "reports", force: :cascade do |t|
    t.date     "data"
    t.integer  "clima_id"
    t.text     "tarefas"
    t.text     "ocorrencias"
    t.integer  "obra_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "reports", ["clima_id"], name: "index_reports_on_clima_id"
  add_index "reports", ["obra_id"], name: "index_reports_on_obra_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
