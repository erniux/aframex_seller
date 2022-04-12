class CotizaCompuertum < ApplicationRecord
    validates :tipo, :instalacion, :uso, :naturaleza_agua, :ancho_vano_hueco, 
              :alto_vano_hueco, :altura_piso_operacion, :carga_estatica, 
              :op_carga, :sentido_sellado, :perimetro_sellado, 
              :instalacion, :mat_tablero_compuerta, :mat_marco, :mat_pedestal, :mat_actuador,
              :mat_anclajes, :mat_recubrimientos, :mat_guias, :mat_sellos,
              :mat_vastago_roscado,:mat_apoyos, :mecanismo_operacion, :recibe, presence: true
              
    attribute :mat_tablero_compuerta, default: 'AI T 304'
    attribute :mat_marco, default: 'AI T 304'
    attribute :mat_pedestal, default: 'AC'
    attribute :mat_actuador, default: 'AC'
    attribute :mat_anclajes, default: 'AI T 304'
    attribute :mat_recubrimientos, default: '1'
    attribute :mat_guias, default: 'PUAD'
    attribute :mat_sellos, default: 'NEOPRENO'
    attribute :mat_vastago_roscado, default: 'AI T 304'
    attribute :mat_apoyos, default: 'AI T 304'  
            
    validates :ancho_vano_hueco, :inclusion => 50..300
    validates :carga_estatica, :inclusion => 0..50
            

# *************************************************#
# **************PRIMER BLOQUE EXCEL ***************#
# *************************************************#
# LOS VALORES DE ENTRADA SON:
# D19 Ancho Util (L)
# D20 Altura Util (H)
# D21 Carga Maxima Operacion (Ce)
# D22 Nivel Piso Operacion (NPO)
# D23 Nivel Fondo Compuerta (NFC)
# J58 Diametro Vastago d
# D44 Espacio Entre Apoyos (La)    
# J59 Esfuerzo al volante Kgf   

# ************* D24 Peso Promedio por m2 de tablero *********************#
# Interpolacion de la tabla L=Ancho de la compuerta(D19) vs Carga Maxima Operacion(D21)
# ***********************************************************************#
    def calc_peso_promedio_tablero(ancho_util, carga_max_operacion)
        valor_carga = CapacidadCompuertum.carga_exacta(carga_max_operacion)

        if valor_carga.blank?
        case 
        when carga_max_operacion < 0.50
            carga = 0.50
        when carga_max_operacion > 50
            carga = 50
        else
            carga = CapacidadCompuertum.carga_calculada(carga_max_operacion).last.carga
        end
        else
            carga = carga_max_operacion
        end

        valor_ancho = CapacidadCompuertum.ancho_exacto(ancho_util)
        if valor_ancho.blank?
            peso = CapacidadCompuertum.ancho_calculado(ancho_util, carga)        
            ancho_1 =  peso.first.ancho #X1
            ancho_2 =  peso.last.ancho #X2
            peso_1 = peso.first.valor #Y1
            peso_2 = peso.last.valor #Y2
            peso_total = peso_1 + (((ancho_util-ancho_1)/(ancho_2-ancho_1))*(peso_2-peso_1))
        else
            peso_total = CapacidadCompuertum.peso_exacto(ancho_util, carga).last.valor
        end
    
   	    return peso_total
    end

end



    
