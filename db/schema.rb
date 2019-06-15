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

ActiveRecord::Schema.define(version: 2019_06_15_183530) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "atuacao", force: :cascade do |t|
    t.integer "atuacaoKey"
    t.boolean "ativo"
    t.integer "usuario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categoria", force: :cascade do |t|
    t.integer "categoriaKey"
    t.string "descricao"
    t.string "cor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dataLimite", force: :cascade do |t|
    t.integer "timestamp"
    t.string "formatedd"
    t.string "string"
    t.string "cor"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "especieDeTicket", force: :cascade do |t|
    t.integer "especieDeTicketKey"
    t.string "descricao"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kanbanStatus", force: :cascade do |t|
    t.integer "kanbanStatusKey"
    t.string "descricao"
    t.boolean "fim"
    t.integer "ordem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projeto", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responsavel", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ticket", force: :cascade do |t|
    t.integer "ticketKey"
    t.integer "quantidadeDeVinculados"
    t.string "titulo"
    t.bigint "categoria_id"
    t.bigint "tipoDeTicket_id"
    t.bigint "kanbanStatus_id"
    t.bigint "tipoDePrioridade_id"
    t.string "especieDeTicket"
    t.string "references"
    t.boolean "alvoDeSpam"
    t.string "valorDeNegocio"
    t.string "integer"
    t.integer "esforco"
    t.bigint "projeto_id"
    t.bigint "responsavel_id"
    t.bigint "atuacao_id"
    t.string "dataLimite"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["atuacao_id"], name: "index_ticket_on_atuacao_id"
    t.index ["categoria_id"], name: "index_ticket_on_categoria_id"
    t.index ["kanbanStatus_id"], name: "index_ticket_on_kanbanStatus_id"
    t.index ["projeto_id"], name: "index_ticket_on_projeto_id"
    t.index ["responsavel_id"], name: "index_ticket_on_responsavel_id"
    t.index ["tipoDePrioridade_id"], name: "index_ticket_on_tipoDePrioridade_id"
    t.index ["tipoDeTicket_id"], name: "index_ticket_on_tipoDeTicket_id"
  end

  create_table "tipoDePrioridade", force: :cascade do |t|
    t.integer "tipoDePrioridadeKey"
    t.string "descricao"
    t.string "cor"
    t.integer "peso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipoDeTicket", force: :cascade do |t|
    t.integer "tipoDeTicketKey"
    t.string "descricao"
    t.string "cor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuario", force: :cascade do |t|
    t.integer "usuarioKey"
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ticket", "\"kanbanStatus\"", column: "kanbanStatus_id"
  add_foreign_key "ticket", "\"tipoDePrioridade\"", column: "tipoDePrioridade_id"
  add_foreign_key "ticket", "\"tipoDeTicket\"", column: "tipoDeTicket_id"
  add_foreign_key "ticket", "atuacao"
  add_foreign_key "ticket", "categoria", column: "categoria_id"
  add_foreign_key "ticket", "projeto"
  add_foreign_key "ticket", "responsavel"
end
