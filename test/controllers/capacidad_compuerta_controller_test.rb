require "test_helper"

class CapacidadCompuertaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @capacidad_compuertum = capacidad_compuerta(:one)
  end

  test "should get index" do
    get capacidad_compuerta_url
    assert_response :success
  end

  test "should get new" do
    get new_capacidad_compuertum_url
    assert_response :success
  end

  test "should create capacidad_compuertum" do
    assert_difference("CapacidadCompuertum.count") do
      post capacidad_compuerta_url, params: { capacidad_compuertum: { ancho: @capacidad_compuertum.ancho, carga: @capacidad_compuertum.carga, valor: @capacidad_compuertum.valor } }
    end

    assert_redirected_to capacidad_compuertum_url(CapacidadCompuertum.last)
  end

  test "should show capacidad_compuertum" do
    get capacidad_compuertum_url(@capacidad_compuertum)
    assert_response :success
  end

  test "should get edit" do
    get edit_capacidad_compuertum_url(@capacidad_compuertum)
    assert_response :success
  end

  test "should update capacidad_compuertum" do
    patch capacidad_compuertum_url(@capacidad_compuertum), params: { capacidad_compuertum: { ancho: @capacidad_compuertum.ancho, carga: @capacidad_compuertum.carga, valor: @capacidad_compuertum.valor } }
    assert_redirected_to capacidad_compuertum_url(@capacidad_compuertum)
  end

  test "should destroy capacidad_compuertum" do
    assert_difference("CapacidadCompuertum.count", -1) do
      delete capacidad_compuertum_url(@capacidad_compuertum)
    end

    assert_redirected_to capacidad_compuerta_url
  end
end
