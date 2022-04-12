class CreateCapacidadCompuerta < ActiveRecord::Migration[7.0]
  def change
    create_table :capacidad_compuerta do |t|
      t.float :carga
      t.float :ancho
      t.float :valor

      t.timestamps
    end
  end
end
