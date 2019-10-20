require 'test_helper'

class SmallGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @small_group = small_groups(:one)
  end

  test "should get index" do
    get small_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_small_group_url
    assert_response :success
  end

  test "should create small_group" do
    assert_difference('SmallGroup.count') do
      post small_groups_url, params: { small_group: { discipleship_community_id: @small_group.discipleship_community_id, user_role_id: @small_group.user_role_id } }
    end

    assert_redirected_to small_group_url(SmallGroup.last)
  end

  test "should show small_group" do
    get small_group_url(@small_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_small_group_url(@small_group)
    assert_response :success
  end

  test "should update small_group" do
    patch small_group_url(@small_group), params: { small_group: { discipleship_community_id: @small_group.discipleship_community_id, user_role_id: @small_group.user_role_id } }
    assert_redirected_to small_group_url(@small_group)
  end

  test "should destroy small_group" do
    assert_difference('SmallGroup.count', -1) do
      delete small_group_url(@small_group)
    end

    assert_redirected_to small_groups_url
  end
end
