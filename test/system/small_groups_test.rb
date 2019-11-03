require "application_system_test_case"

class SmallGroupsTest < ApplicationSystemTestCase
  setup do
    @small_group = small_groups(:one)
  end

  test "visiting the index" do
    visit small_groups_url
    assert_selector "h1", text: "Small Groups"
  end

  test "creating a Small group" do
    visit small_groups_url
    click_on "New Small Group"

    fill_in "Discipleship community", with: @small_group.discipleship_community_id
    fill_in "User role", with: @small_group.user_role_id
    click_on "Create Small group"

    assert_text "Small group was successfully created"
    click_on "Back"
  end

  test "updating a Small group" do
    visit small_groups_url
    click_on "Edit", match: :first

    fill_in "Discipleship community", with: @small_group.discipleship_community_id
    fill_in "User role", with: @small_group.user_role_id
    click_on "Update Small group"

    assert_text "Small group was successfully updated"
    click_on "Back"
  end

  test "destroying a Small group" do
    visit small_groups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Small group was successfully destroyed"
  end
end
