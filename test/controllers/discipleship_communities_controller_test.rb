require 'test_helper'

class DiscipleshipCommunitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discipleship_community = discipleship_communities(:one)
  end

  test "should get index" do
    get discipleship_communities_url
    assert_response :success
  end

  test "should get new" do
    get new_discipleship_community_url
    assert_response :success
  end

  test "should create discipleship_community" do
    assert_difference('DiscipleshipCommunity.count') do
      post discipleship_communities_url, params: { discipleship_community: { discipleship_community_night: @discipleship_community.discipleship_community_night, user_role_id: @discipleship_community.user_role_id } }
    end

    assert_redirected_to discipleship_community_url(DiscipleshipCommunity.last)
  end

  test "should show discipleship_community" do
    get discipleship_community_url(@discipleship_community)
    assert_response :success
  end

  test "should get edit" do
    get edit_discipleship_community_url(@discipleship_community)
    assert_response :success
  end

  test "should update discipleship_community" do
    patch discipleship_community_url(@discipleship_community), params: { discipleship_community: { discipleship_community_night: @discipleship_community.discipleship_community_night, user_role_id: @discipleship_community.user_role_id } }
    assert_redirected_to discipleship_community_url(@discipleship_community)
  end

  test "should destroy discipleship_community" do
    assert_difference('DiscipleshipCommunity.count', -1) do
      delete discipleship_community_url(@discipleship_community)
    end

    assert_redirected_to discipleship_communities_url
  end
end
