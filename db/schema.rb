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

ActiveRecord::Schema[7.0].define(version: 2022_04_11_212014) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "capacidad_compuerta", force: :cascade do |t|
    t.float "carga"
    t.float "ancho"
    t.float "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cotiza_compuerta", force: :cascade do |t|
    t.integer "cantidad"
    t.string "tipo"
    t.string "instalacion"
    t.string "desc_inst_otro"
    t.string "uso"
    t.string "naturaleza_agua"
    t.string "agua_otro_desc"
    t.float "ancho_vano_hueco"
    t.float "alto_vano_hueco"
    t.float "altura_piso_operacion"
    t.float "carga_estatica"
    t.string "op_carga"
    t.string "sentido_sellado"
    t.string "perimetro_sellado"
    t.float "tiempo_maniobra_abertura"
    t.float "tiempo_maniobra_cierre"
    t.float "frecuencia_accionamiento"
    t.float "energia_voltaje"
    t.float "energia_frecuencia"
    t.float "energia_fases"
    t.boolean "recubrimiento_primario"
    t.boolean "recubrimiento_amerlock"
    t.boolean "recubrimiento_gpic"
    t.boolean "recubrimiento_otro"
    t.string "recubrimiento_otro_desc"
    t.boolean "normas_cfe"
    t.boolean "normas_cna"
    t.boolean "normas_pemex"
    t.boolean "normas_otra"
    t.string "normas_otra_desc"
    t.boolean "otros_transporte"
    t.boolean "otros_montaje"
    t.boolean "otros_supervision"
    t.boolean "otros_elab_dib_hea"
    t.boolean "otros_elab_dib_poc"
    t.text "observaciones"
    t.string "recibe"
    t.string "mat_tablero_compuerta"
    t.string "mat_marco"
    t.string "mat_pedestal"
    t.string "mat_actuador"
    t.string "mat_anclajes"
    t.string "mat_recubrimientos"
    t.string "mat_guias"
    t.string "mat_sellos"
    t.string "mat_vastago_roscado"
    t.string "mat_apoyos"
    t.string "mecanismo_operacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
