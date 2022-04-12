require "test_helper"

class CotizaCompuertaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cotiza_compuertum = cotiza_compuerta(:one)
  end

  test "should get index" do
    get cotiza_compuerta_url
    assert_response :success
  end

  test "should get new" do
    get new_cotiza_compuertum_url
    assert_response :success
  end

  test "should create cotiza_compuertum" do
    assert_difference("CotizaCompuertum.count") do
      post cotiza_compuerta_url, params: { cotiza_compuertum: { observaciones: @cotiza_compuertum.observaciones, tipo: @cotiza_compuertum.tipo } }
    end

    assert_redirected_to cotiza_compuertum_url(CotizaCompuertum.last)
  end

  test "should show cotiza_compuertum" do
    get cotiza_compuertum_url(@cotiza_compuertum)
    assert_response :success
  end

  test "should get edit" do
    get edit_cotiza_compuertum_url(@cotiza_compuertum)
    assert_response :success
  end

  test "should update cotiza_compuertum" do
    patch cotiza_compuertum_url(@cotiza_compuertum), params: { cotiza_compuertum: { observaciones: @cotiza_compuertum.observaciones, tipo: @cotiza_compuertum.tipo } }
    assert_redirected_to cotiza_compuertum_url(@cotiza_compuertum)
  end

  test "should destroy cotiza_compuertum" do
    assert_difference("CotizaCompuertum.count", -1) do
      delete cotiza_compuertum_url(@cotiza_compuertum)
    end

    assert_redirected_to cotiza_compuerta_url
  end
end
