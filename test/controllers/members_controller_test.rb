require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

#we're not planning to have a destroy method, so this test should probably be removed.
  # test "should get destroy" do
  #   get :destroy
  #   assert_response :success
  # end

#are we allowing members to edit themselves? this might be another test to remove.
  # test "should get edit" do
  #   get :edit
  #   assert_response :success
  # end

end
