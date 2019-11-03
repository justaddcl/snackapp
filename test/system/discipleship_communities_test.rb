require "application_system_test_case"

class DiscipleshipCommunitiesTest < ApplicationSystemTestCase
  setup do
    @discipleship_community = discipleship_communities(:one)
  end

  test "visiting the index" do
    visit discipleship_communities_url
    assert_selector "h1", text: "Discipleship Communities"
  end

  test "creating a Discipleship community" do
    visit discipleship_communities_url
    click_on "New Discipleship Community"

    fill_in "Discipleship community night", with: @discipleship_community.discipleship_community_night
    fill_in "User role", with: @discipleship_community.user_role_id
    click_on "Create Discipleship community"

    assert_text "Discipleship community was successfully created"
    click_on "Back"
  end

  test "updating a Discipleship community" do
    visit discipleship_communities_url
    click_on "Edit", match: :first

    fill_in "Discipleship community night", with: @discipleship_community.discipleship_community_night
    fill_in "User role", with: @discipleship_community.user_role_id
    click_on "Update Discipleship community"

    assert_text "Discipleship community was successfully updated"
    click_on "Back"
  end

  test "destroying a Discipleship community" do
    visit discipleship_communities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Discipleship community was successfully destroyed"
  end
end
