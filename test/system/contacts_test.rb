require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  setup do
    @contact = contacts(:one)
  end

  test "visiting the index" do
    visit contacts_url
    assert_selector "h1", text: "Contacts"
  end

  test "should create contact" do
    visit contacts_url
    click_on "New contact"

    fill_in "Bedrijfsnaam", with: @contact.bedrijfsnaam
    fill_in "Contactnaam", with: @contact.contactnaam
    fill_in "Email", with: @contact.email
    fill_in "Onderwerp", with: @contact.onderwerp
    fill_in "Tel", with: @contact.tel
    click_on "Create Contact"

    assert_text "Contact was successfully created"
    click_on "Back"
  end

  test "should update Contact" do
    visit contact_url(@contact)
    click_on "Edit this contact", match: :first

    fill_in "Bedrijfsnaam", with: @contact.bedrijfsnaam
    fill_in "Contactnaam", with: @contact.contactnaam
    fill_in "Email", with: @contact.email
    fill_in "Onderwerp", with: @contact.onderwerp
    fill_in "Tel", with: @contact.tel
    click_on "Update Contact"

    assert_text "Contact was successfully updated"
    click_on "Back"
  end

  test "should destroy Contact" do
    visit contact_url(@contact)
    click_on "Destroy this contact", match: :first

    assert_text "Contact was successfully destroyed"
  end
end
