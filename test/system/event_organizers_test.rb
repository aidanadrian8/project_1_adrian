require "application_system_test_case"

class EventOrganizersTest < ApplicationSystemTestCase
  setup do
    @event_organizer = event_organizers(:one)
  end

  test "visiting the index" do
    visit event_organizers_url
    assert_selector "h1", text: "Event organizers"
  end

  test "should create event organizer" do
    visit event_organizers_url
    click_on "New event organizer"

    fill_in "Description", with: @event_organizer.description
    fill_in "Email", with: @event_organizer.email
    fill_in "Firstname", with: @event_organizer.firstName
    fill_in "Lastname", with: @event_organizer.lastName
    click_on "Create Event organizer"

    assert_text "Event organizer was successfully created"
    click_on "Back"
  end

  test "should update Event organizer" do
    visit event_organizer_url(@event_organizer)
    click_on "Edit this event organizer", match: :first

    fill_in "Description", with: @event_organizer.description
    fill_in "Email", with: @event_organizer.email
    fill_in "Firstname", with: @event_organizer.firstName
    fill_in "Lastname", with: @event_organizer.lastName
    click_on "Update Event organizer"

    assert_text "Event organizer was successfully updated"
    click_on "Back"
  end

  test "should destroy Event organizer" do
    visit event_organizer_url(@event_organizer)
    click_on "Destroy this event organizer", match: :first

    assert_text "Event organizer was successfully destroyed"
  end
end
