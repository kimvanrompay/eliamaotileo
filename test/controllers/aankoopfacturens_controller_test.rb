require "test_helper"

class AankoopfacturensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aankoopfacturen = aankoopfacturens(:one)
  end

  test "should get index" do
    get aankoopfacturens_url
    assert_response :success
  end

  test "should get new" do
    get new_aankoopfacturen_url
    assert_response :success
  end

  test "should create aankoopfacturen" do
    assert_difference("Aankoopfacturen.count") do
      post aankoopfacturens_url, params: { aankoopfacturen: { adres: @aankoopfacturen.adres, bedrijfsnaam: @aankoopfacturen.bedrijfsnaam, begunstigde: @aankoopfacturen.begunstigde, betaald: @aankoopfacturen.betaald, bevestigd: @aankoopfacturen.bevestigd, btw: @aankoopfacturen.btw, description: @aankoopfacturen.description, excl_bedrag: @aankoopfacturen.excl_bedrag, factuur_mail: @aankoopfacturen.factuur_mail, factuurdatum: @aankoopfacturen.factuurdatum, factuurnummer: @aankoopfacturen.factuurnummer, klantnummer: @aankoopfacturen.klantnummer, land: @aankoopfacturen.land, mededeling: @aankoopfacturen.mededeling, opmerking: @aankoopfacturen.opmerking, postcode: @aankoopfacturen.postcode, recurrent: @aankoopfacturen.recurrent, rekeningnummer: @aankoopfacturen.rekeningnummer, staving: @aankoopfacturen.staving, vervaldatum: @aankoopfacturen.vervaldatum } }
    end

    assert_redirected_to aankoopfacturen_url(Aankoopfacturen.last)
  end

  test "should show aankoopfacturen" do
    get aankoopfacturen_url(@aankoopfacturen)
    assert_response :success
  end

  test "should get edit" do
    get edit_aankoopfacturen_url(@aankoopfacturen)
    assert_response :success
  end

  test "should update aankoopfacturen" do
    patch aankoopfacturen_url(@aankoopfacturen), params: { aankoopfacturen: { adres: @aankoopfacturen.adres, bedrijfsnaam: @aankoopfacturen.bedrijfsnaam, begunstigde: @aankoopfacturen.begunstigde, betaald: @aankoopfacturen.betaald, bevestigd: @aankoopfacturen.bevestigd, btw: @aankoopfacturen.btw, description: @aankoopfacturen.description, excl_bedrag: @aankoopfacturen.excl_bedrag, factuur_mail: @aankoopfacturen.factuur_mail, factuurdatum: @aankoopfacturen.factuurdatum, factuurnummer: @aankoopfacturen.factuurnummer, klantnummer: @aankoopfacturen.klantnummer, land: @aankoopfacturen.land, mededeling: @aankoopfacturen.mededeling, opmerking: @aankoopfacturen.opmerking, postcode: @aankoopfacturen.postcode, recurrent: @aankoopfacturen.recurrent, rekeningnummer: @aankoopfacturen.rekeningnummer, staving: @aankoopfacturen.staving, vervaldatum: @aankoopfacturen.vervaldatum } }
    assert_redirected_to aankoopfacturen_url(@aankoopfacturen)
  end

  test "should destroy aankoopfacturen" do
    assert_difference("Aankoopfacturen.count", -1) do
      delete aankoopfacturen_url(@aankoopfacturen)
    end

    assert_redirected_to aankoopfacturens_url
  end
end
