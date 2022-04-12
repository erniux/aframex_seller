require "application_system_test_case"

class CotizaCompuertaTest < ApplicationSystemTestCase
  setup do
    @cotiza_compuertum = cotiza_compuerta(:one)
  end

  test "visiting the index" do
    visit cotiza_compuerta_url
    assert_selector "h1", text: "Cotiza compuerta"
  end

  test "should create cotiza compuertum" do
    visit cotiza_compuerta_url
    click_on "New cotiza compuertum"

    fill_in "Observaciones", with: @cotiza_compuertum.observaciones
    fill_in "Tipo", with: @cotiza_compuertum.tipo
    click_on "Create Cotiza compuertum"

    assert_text "Cotiza compuertum was successfully created"
    click_on "Back"
  end

  test "should update Cotiza compuertum" do
    visit cotiza_compuertum_url(@cotiza_compuertum)
    click_on "Edit this cotiza compuertum", match: :first

    fill_in "Observaciones", with: @cotiza_compuertum.observaciones
    fill_in "Tipo", with: @cotiza_compuertum.tipo
    click_on "Update Cotiza compuertum"

    assert_text "Cotiza compuertum was successfully updated"
    click_on "Back"
  end

  test "should destroy Cotiza compuertum" do
    visit cotiza_compuertum_url(@cotiza_compuertum)
    click_on "Destroy this cotiza compuertum", match: :first

    assert_text "Cotiza compuertum was successfully destroyed"
  end
end
