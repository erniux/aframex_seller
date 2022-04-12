class CapacidadCompuertum < ApplicationRecord
    include PgSearch::Model

	validates_presence_of :carga, :ancho, :valor

	pg_search_scope :search_all_values, against: [:carga, :ancho, :valor ] 

    scope :carga_exacta, ->(carga_max_operacion) { where("carga = ?", carga_max_operacion) }
	scope :ancho_exacto, ->(ancho_util) { where("ancho = ?", ancho_util) }
	scope :carga_calculada, ->(carga_max_operacion) { where(carga: (carga_max_operacion - 0.5)..(carga_max_operacion + 0.5))}
	
	#si no son exactos ancho y carga (la carga sera el valor proximo al capturado)
	scope :ancho_calculado, ->(ancho_util, carga_max_operacion) { where(ancho: (ancho_util - 10)..(ancho_util + 10), carga: carga_max_operacion)  }

	scope :peso_exacto, ->(ancho_util, carga_max_operacion) { where(ancho: ancho_util, carga: carga_max_operacion) }

	def next
    	self.class.where("id > ?", id).first
  	end

  	def previous
    	self.class.where("id < ?", id).last
  	end

end
