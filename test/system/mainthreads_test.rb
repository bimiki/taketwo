require "application_system_test_case"

class MainthreadsTest < ApplicationSystemTestCase
  setup do
    @mainthread = mainthreads(:one)
  end

  test "visiting the index" do
    visit mainthreads_url
    assert_selector "h1", text: "Mainthreads"
  end

  test "creating a Mainthread" do
    visit mainthreads_url
    click_on "New Mainthread"

    fill_in "Info", with: @mainthread.info
    fill_in "Name", with: @mainthread.name
    click_on "Create Mainthread"

    assert_text "Mainthread was successfully created"
    click_on "Back"
  end

  test "updating a Mainthread" do
    visit mainthreads_url
    click_on "Edit", match: :first

    fill_in "Info", with: @mainthread.info
    fill_in "Name", with: @mainthread.name
    click_on "Update Mainthread"

    assert_text "Mainthread was successfully updated"
    click_on "Back"
  end

  test "destroying a Mainthread" do
    visit mainthreads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mainthread was successfully destroyed"
  end
end
