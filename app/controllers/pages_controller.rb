class PagesController < ApplicationController
  def home
    @productos = Producto.all.order(nombre: 'ASC')
  end
end
