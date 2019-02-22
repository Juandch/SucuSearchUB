require "application_system_test_case"

class SuculentaTest < ApplicationSystemTestCase
  setup do
    @suculentum = suculenta(:one)
  end

  test "visiting the index" do
    visit suculenta_url
    assert_selector "h1", text: "Suculenta"
  end

  test "creating a Suculentum" do
    visit suculenta_url
    click_on "New Suculentum"

    fill_in "Idfamily", with: @suculentum.idFamily
    fill_in "Idorgan", with: @suculentum.idOrgan
    fill_in "Idsuculent", with: @suculentum.idSuculent
    fill_in "Idsustrato", with: @suculentum.idSustrato
    fill_in "Image", with: @suculentum.image
    fill_in "Name", with: @suculentum.name
    fill_in "Temp", with: @suculentum.temp
    click_on "Create Suculentum"

    assert_text "Suculentum was successfully created"
    click_on "Back"
  end

  test "updating a Suculentum" do
    visit suculenta_url
    click_on "Edit", match: :first

    fill_in "Idfamily", with: @suculentum.idFamily
    fill_in "Idorgan", with: @suculentum.idOrgan
    fill_in "Idsuculent", with: @suculentum.idSuculent
    fill_in "Idsustrato", with: @suculentum.idSustrato
    fill_in "Image", with: @suculentum.image
    fill_in "Name", with: @suculentum.name
    fill_in "Temp", with: @suculentum.temp
    click_on "Update Suculentum"

    assert_text "Suculentum was successfully updated"
    click_on "Back"
  end

  test "destroying a Suculentum" do
    visit suculenta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Suculentum was successfully destroyed"
  end
end
