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

ActiveRecord::Schema.define(version: 2019_06_15_151025) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "atuacaos", force: :cascade do |t|
    t.integer "atuacaoKey"
    t.boolean "ativo"
    t.bigint "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_atuacaos_on_usuario_id"
  end

  create_table "categoria", force: :cascade do |t|
    t.integer "categoriaKey"
    t.string "descricao"
    t.string "cor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "data_limites", force: :cascade do |t|
    t.integer "timestamp"
    t.string "formated"
    t.string "string"
    t.string "cor"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "especie_de_tickets", force: :cascade do |t|
    t.integer "especieDeTicketKey"
    t.string "descricao"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kanban_statuses", force: :cascade do |t|
    t.integer "kanbanStatusKey"
    t.string "descricao"
    t.boolean "fim"
    t.integer "ordem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projetos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resposavels", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string "ticketKey"
    t.integer "quantidadeDeVinculado"
    t.string "titulo"
    t.bigint "categoria_id"
    t.bigint "tipo_de_ticket_id"
    t.bigint "kanban_status_id"
    t.bigint "tipo_de_prioridade_id"
    t.string "especie_de_ticket"
    t.string "references"
    t.boolean "alvoDeSpam"
    t.string "valorDeNegocio"
    t.string "integer"
    t.integer "esforco"
    t.bigint "projeto_id"
    t.bigint "resposavel_id"
    t.bigint "atuacao_id"
    t.string "dataLimite"
    t.string "url"
    t.bigint "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["atuacao_id"], name: "index_tickets_on_atuacao_id"
    t.index ["categoria_id"], name: "index_tickets_on_categoria_id"
    t.index ["kanban_status_id"], name: "index_tickets_on_kanban_status_id"
    t.index ["projeto_id"], name: "index_tickets_on_projeto_id"
    t.index ["resposavel_id"], name: "index_tickets_on_resposavel_id"
    t.index ["tipo_de_prioridade_id"], name: "index_tickets_on_tipo_de_prioridade_id"
    t.index ["tipo_de_ticket_id"], name: "index_tickets_on_tipo_de_ticket_id"
    t.index ["usuario_id"], name: "index_tickets_on_usuario_id"
  end

  create_table "tipo_de_prioridades", force: :cascade do |t|
    t.integer "tipoDePrioridadeKey"
    t.string "descricao"
    t.string "cor"
    t.integer "peso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_de_tickets", force: :cascade do |t|
    t.integer "tipoDeTicketKey"
    t.string "descricao"
    t.string "cor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.integer "usuarioKey"
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "atuacaos", "usuarios"
  add_foreign_key "tickets", "atuacaos"
  add_foreign_key "tickets", "categoria", column: "categoria_id"
  add_foreign_key "tickets", "kanban_statuses"
  add_foreign_key "tickets", "projetos"
  add_foreign_key "tickets", "resposavels"
  add_foreign_key "tickets", "tipo_de_prioridades"
  add_foreign_key "tickets", "tipo_de_tickets"
  add_foreign_key "tickets", "usuarios"
end
