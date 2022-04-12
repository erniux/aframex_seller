class CreateCotizaCompuerta < ActiveRecord::Migration[7.0]
  def change
    create_table :cotiza_compuerta do |t|
      t.integer :cantidad
      t.string :tipo
      t.string :instalacion
      t.string :desc_inst_otro
      t.string :uso
      t.string :naturaleza_agua
      t.string :agua_otro_desc
      t.float :ancho_vano_hueco
      t.float :alto_vano_hueco
      t.float :altura_piso_operacion
      t.float :carga_estatica
      t.string :op_carga
      t.string :sentido_sellado
      t.string :perimetro_sellado
      t.float :tiempo_maniobra_abertura
      t.float :tiempo_maniobra_cierre
      t.float :frecuencia_accionamiento
      t.float :energia_voltaje
      t.float :energia_frecuencia
      t.float :energia_fases
      t.boolean :recubrimiento_primario
      t.boolean :recubrimiento_amerlock
      t.boolean :recubrimiento_gpic
      t.boolean :recubrimiento_otro
      t.string :recubrimiento_otro_desc
      t.boolean :normas_cfe
      t.boolean :normas_cna
      t.boolean :normas_pemex
      t.boolean :normas_otra
      t.string :normas_otra_desc
      t.boolean :otros_transporte
      t.boolean :otros_montaje
      t.boolean :otros_supervision
      t.boolean :otros_elab_dib_hea
      t.boolean :otros_elab_dib_poc
      t.text :observaciones
      t.string :recibe
      t.string :mat_tablero_compuerta
      t.string :mat_marco
      t.string :mat_pedestal
      t.string :mat_actuador
      t.string :mat_anclajes
      t.string :mat_recubrimientos
      t.string :mat_guias
      t.string :mat_sellos
      t.string :mat_vastago_roscado
      t.string :mat_apoyos
      t.string :mecanismo_operacion

      t.timestamps
    end
  end
end
