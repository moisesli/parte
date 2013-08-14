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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130807145425) do

  create_table "descompociciones", :force => true do |t|
    t.string   "descripcion"
    t.string   "unidad"
    t.string   "cantidad"
    t.string   "terreno"
    t.string   "cantidadvales"
    t.string   "observacion"
    t.integer  "parteobra_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "equipos", :force => true do |t|
    t.string   "descripcion"
    t.string   "unidad"
    t.string   "cantidad"
    t.string   "numeroparte"
    t.integer  "partidasdecontrol_id"
    t.string   "observacion"
    t.integer  "parteobra_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "fases", :force => true do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "listacategorias", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "listas", :force => true do |t|
    t.string   "nombre"
    t.integer  "listacategoria_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "materiales", :force => true do |t|
    t.string   "descripcion"
    t.string   "unidad"
    t.string   "cantidad"
    t.integer  "partidasdecontrol_id"
    t.string   "observacion"
    t.integer  "parteobra_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "parteobras", :force => true do |t|
    t.string   "frente"
    t.string   "jefefrente"
    t.string   "maestrodeobra"
    t.string   "casa"
    t.string   "subcontratista"
    t.date     "fechaingreso"
    t.string   "numeroparte"
    t.integer  "subsectore_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "partidas", :force => true do |t|
    t.string   "nombre"
    t.string   "diametro"
    t.string   "serieclase"
    t.string   "profundidad"
    t.string   "unidad"
    t.string   "metrado"
    t.string   "observacion"
    t.integer  "parteobra_id"
    t.string   "terreno"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "partidasdecontrols", :force => true do |t|
    t.integer  "fase_id"
    t.integer  "subfase_id"
    t.integer  "subsectore_id"
    t.integer  "sectore_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "sectores", :force => true do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "subfases", :force => true do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.integer  "fase_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "subsectores", :force => true do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.integer  "sectore_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
