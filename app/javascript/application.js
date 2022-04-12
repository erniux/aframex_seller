// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"


function calculaPasoAgua() {
    var ce = document.getElementById("cotiza_compuertum_carga_estatica");
    var l = document.getElementById("cotiza_compuertum_ancho_vano_hueco");
    var h = document.getElementById("cotiza_compuertum_alto_vano_hueco");
    var npo = document.getElementById("cotiza_compuertum_altura_piso_operacion");
    console.log(ce.value, l.value, h.value, npo.value);
    var pp = function calcula_paso_agua (l, ce) {
        source: "/cotiza_compuerta/calcula_paso_agua"
        alto: l
        carga: ce
    }
    console.log(pp);
  }
