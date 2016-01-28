require 'test_helper'

class FileStoresControllerTest < ActionController::TestCase
  setup do
    @file_store = file_stores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:file_stores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create file_store" do
    assert_difference('FileStore.count') do
      post :create, file_store: { attachment: @file_store.attachment, date_exercised: @file_store.date_exercised, date_loaded: @file_store.date_loaded, file_name: @file_store.file_name }
    end

    assert_redirected_to file_store_path(assigns(:file_store))
  end

  test "should show file_store" do
    get :show, id: @file_store
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @file_store
    assert_response :success
  end

  test "should update file_store" do
    patch :update, id: @file_store, file_store: { attachment: @file_store.attachment, date_exercised: @file_store.date_exercised, date_loaded: @file_store.date_loaded, file_name: @file_store.file_name }
    assert_redirected_to file_store_path(assigns(:file_store))
  end

  test "should destroy file_store" do
    assert_difference('FileStore.count', -1) do
      delete :destroy, id: @file_store
    end

    assert_redirected_to file_stores_path
  end
end
