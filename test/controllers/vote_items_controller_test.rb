require 'test_helper'

class VoteItemsControllerTest < ActionController::TestCase
  setup do
    @vote_item = vote_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vote_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vote_item" do
    assert_difference('VoteItem.count') do
      post :create, vote_item: { candidate_id: @vote_item.candidate_id }
    end

    assert_redirected_to vote_item_path(assigns(:vote_item))
  end

  test "should show vote_item" do
    get :show, id: @vote_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vote_item
    assert_response :success
  end

  test "should update vote_item" do
    patch :update, id: @vote_item, vote_item: { candidate_id: @vote_item.candidate_id }
    assert_redirected_to vote_item_path(assigns(:vote_item))
  end

  test "should destroy vote_item" do
    assert_difference('VoteItem.count', -1) do
      delete :destroy, id: @vote_item
    end

    assert_redirected_to vote_items_path
  end
end
