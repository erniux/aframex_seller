require "application_system_test_case"

class CapacidadCompuertaTest < ApplicationSystemTestCase
  setup do
    @capacidad_compuertum = capacidad_compuerta(:one)
  end

  test "visiting the index" do
    visit capacidad_compuerta_url
    assert_selector "h1", text: "Capacidad compuerta"
  end

  test "should create capacidad compuertum" do
    visit capacidad_compuerta_url
    click_on "New capacidad compuertum"

    fill_in "Ancho", with: @capacidad_compuertum.ancho
    fill_in "Carga", with: @capacidad_compuertum.carga
    fill_in "Valor", with: @capacidad_compuertum.valor
    click_on "Create Capacidad compuertum"

    assert_text "Capacidad compuertum was successfully created"
    click_on "Back"
  end

  test "should update Capacidad compuertum" do
    visit capacidad_compuertum_url(@capacidad_compuertum)
    click_on "Edit this capacidad compuertum", match: :first

    fill_in "Ancho", with: @capacidad_compuertum.ancho
    fill_in "Carga", with: @capacidad_compuertum.carga
    fill_in "Valor", with: @capacidad_compuertum.valor
    click_on "Update Capacidad compuertum"

    assert_text "Capacidad compuertum was successfully updated"
    click_on "Back"
  end

  test "should destroy Capacidad compuertum" do
    visit capacidad_compuertum_url(@capacidad_compuertum)
    click_on "Destroy this capacidad compuertum", match: :first

    assert_text "Capacidad compuertum was successfully destroyed"
  end
end
