require 'test_helper'

class SpinEntriesControllerTest < ActionController::TestCase
  setup do
    @spin_entry = spin_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spin_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spin_entry" do
    assert_difference('SpinEntry.count') do
      post :create, spin_entry: { distance: @spin_entry.distance, hrate: @spin_entry.hrate, power: @spin_entry.power, rpm: @spin_entry.rpm, speed: @spin_entry.speed, spin_date: @spin_entry.spin_date, time: @spin_entry.time, user_id: @spin_entry.user_id }
    end

    assert_redirected_to spin_entry_path(assigns(:spin_entry))
  end

  test "should show spin_entry" do
    get :show, id: @spin_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spin_entry
    assert_response :success
  end

  test "should update spin_entry" do
    patch :update, id: @spin_entry, spin_entry: { distance: @spin_entry.distance, hrate: @spin_entry.hrate, power: @spin_entry.power, rpm: @spin_entry.rpm, speed: @spin_entry.speed, spin_date: @spin_entry.spin_date, time: @spin_entry.time, user_id: @spin_entry.user_id }
    assert_redirected_to spin_entry_path(assigns(:spin_entry))
  end

  test "should destroy spin_entry" do
    assert_difference('SpinEntry.count', -1) do
      delete :destroy, id: @spin_entry
    end

    assert_redirected_to spin_entries_path
  end
end
