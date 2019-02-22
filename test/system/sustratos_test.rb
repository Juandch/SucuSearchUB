require "application_system_test_case"

class SustratosTest < ApplicationSystemTestCase
  setup do
    @sustrato = sustratos(:one)
  end

  test "visiting the index" do
    visit sustratos_url
    assert_selector "h1", text: "Sustratos"
  end

  test "creating a Sustrato" do
    visit sustratos_url
    click_on "New Sustrato"

    fill_in "Idsustrato", with: @sustrato.idSustrato
    fill_in "Sustrato", with: @sustrato.sustrato
    click_on "Create Sustrato"

    assert_text "Sustrato was successfully created"
    click_on "Back"
  end

  test "updating a Sustrato" do
    visit sustratos_url
    click_on "Edit", match: :first

    fill_in "Idsustrato", with: @sustrato.idSustrato
    fill_in "Sustrato", with: @sustrato.sustrato
    click_on "Update Sustrato"

    assert_text "Sustrato was successfully updated"
    click_on "Back"
  end

  test "destroying a Sustrato" do
    visit sustratos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sustrato was successfully destroyed"
  end
end
