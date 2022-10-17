require "application_system_test_case"

class DogShowsTest < ApplicationSystemTestCase
  setup do
    @dog_show = dog_shows(:one)
  end

  test "visiting the index" do
    visit dog_shows_url
    assert_selector "h1", text: "Dog shows"
  end

  test "should create dog show" do
    visit dog_shows_url
    click_on "New dog show"

    fill_in "End time", with: @dog_show.end_time
    fill_in "Name", with: @dog_show.name
    fill_in "Start time", with: @dog_show.start_time
    click_on "Create Dog show"

    assert_text "Dog show was successfully created"
    click_on "Back"
  end

  test "should update Dog show" do
    visit dog_show_url(@dog_show)
    click_on "Edit this dog show", match: :first

    fill_in "End time", with: @dog_show.end_time
    fill_in "Name", with: @dog_show.name
    fill_in "Start time", with: @dog_show.start_time
    click_on "Update Dog show"

    assert_text "Dog show was successfully updated"
    click_on "Back"
  end

  test "should destroy Dog show" do
    visit dog_show_url(@dog_show)
    click_on "Destroy this dog show", match: :first

    assert_text "Dog show was successfully destroyed"
  end
end
