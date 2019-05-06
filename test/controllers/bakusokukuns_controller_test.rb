require 'test_helper'

class BakusokukunsControllerTest < ActionController::TestCase
  setup do
    @bakusokukun = bakusokukuns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bakusokukuns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bakusokukun" do
    assert_difference('Bakusokukun.count') do
      post :create, bakusokukun: { Num_of_Pages: @bakusokukun.Num_of_Pages, Time_JST: @bakusokukun.Time_JST }
    end

    assert_redirected_to bakusokukun_path(assigns(:bakusokukun))
  end

  test "should show bakusokukun" do
    get :show, id: @bakusokukun
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bakusokukun
    assert_response :success
  end

  test "should update bakusokukun" do
    patch :update, id: @bakusokukun, bakusokukun: { Num_of_Pages: @bakusokukun.Num_of_Pages, Time_JST: @bakusokukun.Time_JST }
    assert_redirected_to bakusokukun_path(assigns(:bakusokukun))
  end

  test "should destroy bakusokukun" do
    assert_difference('Bakusokukun.count', -1) do
      delete :destroy, id: @bakusokukun
    end

    assert_redirected_to bakusokukuns_path
  end
end
