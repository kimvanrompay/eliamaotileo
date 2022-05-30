require "application_system_test_case"

class InvoicesTest < ApplicationSystemTestCase
  setup do
    @invoice = invoices(:one)
  end

  test "visiting the index" do
    visit invoices_url
    assert_selector "h1", text: "Invoices"
  end

  test "should create invoice" do
    visit invoices_url
    click_on "New invoice"

    fill_in "Adres1", with: @invoice.adres1
    fill_in "Adres2", with: @invoice.adres2
    fill_in "Barcode", with: @invoice.barcode
    fill_in "Bedragexcl", with: @invoice.bedragexcl
    fill_in "Bedragincl", with: @invoice.bedragincl
    fill_in "Bedrijfsnaam", with: @invoice.bedrijfsnaam
    fill_in "Beschrijving", with: @invoice.beschrijving
    fill_in "Btw", with: @invoice.btw
    fill_in "Datum", with: @invoice.datum
    fill_in "Email", with: @invoice.email
    fill_in "Fnummer", with: @invoice.fnummer
    fill_in "Opmerkingen", with: @invoice.opmerkingen
    fill_in "Postcode", with: @invoice.postcode
    fill_in "Stad", with: @invoice.stad
    click_on "Create Invoice"

    assert_text "Invoice was successfully created"
    click_on "Back"
  end

  test "should update Invoice" do
    visit invoice_url(@invoice)
    click_on "Edit this invoice", match: :first

    fill_in "Adres1", with: @invoice.adres1
    fill_in "Adres2", with: @invoice.adres2
    fill_in "Barcode", with: @invoice.barcode
    fill_in "Bedragexcl", with: @invoice.bedragexcl
    fill_in "Bedragincl", with: @invoice.bedragincl
    fill_in "Bedrijfsnaam", with: @invoice.bedrijfsnaam
    fill_in "Beschrijving", with: @invoice.beschrijving
    fill_in "Btw", with: @invoice.btw
    fill_in "Datum", with: @invoice.datum
    fill_in "Email", with: @invoice.email
    fill_in "Fnummer", with: @invoice.fnummer
    fill_in "Opmerkingen", with: @invoice.opmerkingen
    fill_in "Postcode", with: @invoice.postcode
    fill_in "Stad", with: @invoice.stad
    click_on "Update Invoice"

    assert_text "Invoice was successfully updated"
    click_on "Back"
  end

  test "should destroy Invoice" do
    visit invoice_url(@invoice)
    click_on "Destroy this invoice", match: :first

    assert_text "Invoice was successfully destroyed"
  end
end
