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

ActiveRecord::Schema.define(version: 2019_06_08_192947) do

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.date "dataNascimento"
    t.string "numTelefone"
    t.float "limiteCredito"
    t.date "dataCadastro"
    t.string "bairro"
    t.string "nomeRua"
    t.string "nomeCidade"
    t.string "cep"
    t.string "numResidencia"
    t.integer "funcionario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["funcionario_id"], name: "index_clientes_on_funcionario_id"
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.date "dataNascimento"
    t.string "numTelefone"
    t.float "salario"
    t.string "cargo"
    t.date "dataAdimissao"
    t.date "dataPagamento"
    t.string "bairro"
    t.string "nomeRua"
    t.string "nomeCidade"
    t.string "cep"
    t.string "numResidencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_estoques", force: :cascade do |t|
    t.integer "produto_id"
    t.integer "quantidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produto_id"], name: "index_item_estoques_on_produto_id"
  end

  create_table "item_vendas", force: :cascade do |t|
    t.integer "produto_id"
    t.integer "venda_id"
    t.integer "quantidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produto_id"], name: "index_item_vendas_on_produto_id"
    t.index ["venda_id"], name: "index_item_vendas_on_venda_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "codigo"
    t.string "marca"
    t.string "categoria"
    t.text "descricao"
    t.float "preco_venda"
    t.float "preco_compra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendas", force: :cascade do |t|
    t.string "codigo"
    t.integer "cliente_id"
    t.integer "funcionario_id"
    t.float "valor_total"
    t.float "valor_pago"
    t.date "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_vendas_on_cliente_id"
    t.index ["funcionario_id"], name: "index_vendas_on_funcionario_id"
  end

end
