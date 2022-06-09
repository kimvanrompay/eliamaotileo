require "application_system_test_case"

class AankoopfacturensTest < ApplicationSystemTestCase
  setup do
    @aankoopfacturen = aankoopfacturens(:one)
  end

  test "visiting the index" do
    visit aankoopfacturens_url
    assert_selector "h1", text: "Aankoopfacturens"
  end

  test "should create aankoopfacturen" do
    visit aankoopfacturens_url
    click_on "New aankoopfacturen"

    fill_in "Adres", with: @aankoopfacturen.adres
    fill_in "Bedrijfsnaam", with: @aankoopfacturen.bedrijfsnaam
    fill_in "Begunstigde", with: @aankoopfacturen.begunstigde
    check "Betaald" if @aankoopfacturen.betaald
    check "Bevestigd" if @aankoopfacturen.bevestigd
    fill_in "Btw", with: @aankoopfacturen.btw
    fill_in "Description", with: @aankoopfacturen.description
    fill_in "Excl bedrag", with: @aankoopfacturen.excl_bedrag
    fill_in "Factuur mail", with: @aankoopfacturen.factuur_mail
    fill_in "Factuurdatum", with: @aankoopfacturen.factuurdatum
    fill_in "Factuurnummer", with: @aankoopfacturen.factuurnummer
    fill_in "Klantnummer", with: @aankoopfacturen.klantnummer
    fill_in "Land", with: @aankoopfacturen.land
    fill_in "Mededeling", with: @aankoopfacturen.mededeling
    fill_in "Opmerking", with: @aankoopfacturen.opmerking
    fill_in "Postcode", with: @aankoopfacturen.postcode
    check "Recurrent" if @aankoopfacturen.recurrent
    fill_in "Rekeningnummer", with: @aankoopfacturen.rekeningnummer
    fill_in "Staving", with: @aankoopfacturen.staving
    fill_in "Vervaldatum", with: @aankoopfacturen.vervaldatum
    click_on "Create Aankoopfacturen"

    assert_text "Aankoopfacturen was successfully created"
    click_on "Back"
  end

  test "should update Aankoopfacturen" do
    visit aankoopfacturen_url(@aankoopfacturen)
    click_on "Edit this aankoopfacturen", match: :first

    fill_in "Adres", with: @aankoopfacturen.adres
    fill_in "Bedrijfsnaam", with: @aankoopfacturen.bedrijfsnaam
    fill_in "Begunstigde", with: @aankoopfacturen.begunstigde
    check "Betaald" if @aankoopfacturen.betaald
    check "Bevestigd" if @aankoopfacturen.bevestigd
    fill_in "Btw", with: @aankoopfacturen.btw
    fill_in "Description", with: @aankoopfacturen.description
    fill_in "Excl bedrag", with: @aankoopfacturen.excl_bedrag
    fill_in "Factuur mail", with: @aankoopfacturen.factuur_mail
    fill_in "Factuurdatum", with: @aankoopfacturen.factuurdatum
    fill_in "Factuurnummer", with: @aankoopfacturen.factuurnummer
    fill_in "Klantnummer", with: @aankoopfacturen.klantnummer
    fill_in "Land", with: @aankoopfacturen.land
    fill_in "Mededeling", with: @aankoopfacturen.mededeling
    fill_in "Opmerking", with: @aankoopfacturen.opmerking
    fill_in "Postcode", with: @aankoopfacturen.postcode
    check "Recurrent" if @aankoopfacturen.recurrent
    fill_in "Rekeningnummer", with: @aankoopfacturen.rekeningnummer
    fill_in "Staving", with: @aankoopfacturen.staving
    fill_in "Vervaldatum", with: @aankoopfacturen.vervaldatum
    click_on "Update Aankoopfacturen"

    assert_text "Aankoopfacturen was successfully updated"
    click_on "Back"
  end

  test "should destroy Aankoopfacturen" do
    visit aankoopfacturen_url(@aankoopfacturen)
    click_on "Destroy this aankoopfacturen", match: :first

    assert_text "Aankoopfacturen was successfully destroyed"
  end
end
