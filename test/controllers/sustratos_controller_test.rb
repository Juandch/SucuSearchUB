require 'test_helper'

class SustratosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sustrato = sustratos(:one)
  end

  test "should get index" do
    get sustratos_url
    assert_response :success
  end

  test "should get new" do
    get new_sustrato_url
    assert_response :success
  end

  test "should create sustrato" do
    assert_difference('Sustrato.count') do
      post sustratos_url, params: { sustrato: { idSustrato: @sustrato.idSustrato, sustrato: @sustrato.sustrato } }
    end

    assert_redirected_to sustrato_url(Sustrato.last)
  end

  test "should show sustrato" do
    get sustrato_url(@sustrato)
    assert_response :success
  end

  test "should get edit" do
    get edit_sustrato_url(@sustrato)
    assert_response :success
  end

  test "should update sustrato" do
    patch sustrato_url(@sustrato), params: { sustrato: { idSustrato: @sustrato.idSustrato, sustrato: @sustrato.sustrato } }
    assert_redirected_to sustrato_url(@sustrato)
  end

  test "should destroy sustrato" do
    assert_difference('Sustrato.count', -1) do
      delete sustrato_url(@sustrato)
    end

    assert_redirected_to sustratos_url
  end
end
