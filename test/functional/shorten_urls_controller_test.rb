require 'test_helper'

class ShortenUrlsControllerTest < ActionController::TestCase
  setup do
    @shorten_url = shorten_urls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shorten_urls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shorten_url" do
    assert_difference('ShortenUrl.count') do
      post :create, shorten_url: { input: @shorten_url.input }
    end

    assert_redirected_to shorten_url_path(assigns(:shorten_url))
  end

  test "should show shorten_url" do
    get :show, id: @shorten_url
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shorten_url
    assert_response :success
  end

  test "should update shorten_url" do
    put :update, id: @shorten_url, shorten_url: { input: @shorten_url.input }
    assert_redirected_to shorten_url_path(assigns(:shorten_url))
  end

  test "should destroy shorten_url" do
    assert_difference('ShortenUrl.count', -1) do
      delete :destroy, id: @shorten_url
    end

    assert_redirected_to shorten_urls_path
  end
end
