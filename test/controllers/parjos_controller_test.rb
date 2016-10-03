require 'test_helper'

class ParjosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parjo = parjos(:one)
  end

  test "should get index" do
    get parjos_url
    assert_response :success
  end

  test "should get new" do
    get new_parjo_url
    assert_response :success
  end

  test "should create parjo" do
    assert_difference('Parjo.count') do
      post parjos_url, params: { parjo: { email: @parjo.email, name: @parjo.name } }
    end

    assert_redirected_to parjo_url(Parjo.last)
  end

  test "should show parjo" do
    get parjo_url(@parjo)
    assert_response :success
  end

  test "should get edit" do
    get edit_parjo_url(@parjo)
    assert_response :success
  end

  test "should update parjo" do
    patch parjo_url(@parjo), params: { parjo: { email: @parjo.email, name: @parjo.name } }
    assert_redirected_to parjo_url(@parjo)
  end

  test "should destroy parjo" do
    assert_difference('Parjo.count', -1) do
      delete parjo_url(@parjo)
    end

    assert_redirected_to parjos_url
  end
end
