require "application_system_test_case"

class NetPointsTest < ApplicationSystemTestCase
  setup do
    @net_point = net_points(:one)
  end

  test "visiting the index" do
    visit net_points_url
    assert_selector "h1", text: "Net Points"
  end

  test "creating a Net point" do
    visit net_points_url
    click_on "New Net Point"

    fill_in "Asu", with: @net_point.asu
    fill_in "Dbm", with: @net_point.dbm
    fill_in "Latitude", with: @net_point.latitude
    fill_in "Longitude", with: @net_point.longitude
    fill_in "Mcc", with: @net_point.mcc
    fill_in "Mnc", with: @net_point.mnc
    fill_in "Net type", with: @net_point.net_type
    fill_in "Operator", with: @net_point.operator_id
    fill_in "User", with: @net_point.user_id
    click_on "Create Net point"

    assert_text "Net point was successfully created"
    click_on "Back"
  end

  test "updating a Net point" do
    visit net_points_url
    click_on "Edit", match: :first

    fill_in "Asu", with: @net_point.asu
    fill_in "Dbm", with: @net_point.dbm
    fill_in "Latitude", with: @net_point.latitude
    fill_in "Longitude", with: @net_point.longitude
    fill_in "Mcc", with: @net_point.mcc
    fill_in "Mnc", with: @net_point.mnc
    fill_in "Net type", with: @net_point.net_type
    fill_in "Operator", with: @net_point.operator_id
    fill_in "User", with: @net_point.user_id
    click_on "Update Net point"

    assert_text "Net point was successfully updated"
    click_on "Back"
  end

  test "destroying a Net point" do
    visit net_points_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Net point was successfully destroyed"
  end
end
