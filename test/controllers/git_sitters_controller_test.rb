require 'test_helper'

class GitSittersControllerTest < ActionController::TestCase
  setup do
    @git_sitter = git_sitters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:git_sitters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create git_sitter" do
    assert_difference('GitSitter.count') do
      post :create, git_sitter: { how_long: @git_sitter.how_long, message: @git_sitter.message, when: @git_sitter.when }
    end

    assert_redirected_to git_sitter_path(assigns(:git_sitter))
  end

  test "should show git_sitter" do
    get :show, id: @git_sitter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @git_sitter
    assert_response :success
  end

  test "should update git_sitter" do
    patch :update, id: @git_sitter, git_sitter: { how_long: @git_sitter.how_long, message: @git_sitter.message, when: @git_sitter.when }
    assert_redirected_to git_sitter_path(assigns(:git_sitter))
  end

  test "should destroy git_sitter" do
    assert_difference('GitSitter.count', -1) do
      delete :destroy, id: @git_sitter
    end

    assert_redirected_to git_sitters_path
  end
end
