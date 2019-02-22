require 'test_helper'

class SuculentaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suculentum = suculenta(:one)
  end

  test "should get index" do
    get suculenta_url
    assert_response :success
  end

  test "should get new" do
    get new_suculentum_url
    assert_response :success
  end

  test "should create suculentum" do
    assert_difference('Suculentum.count') do
      post suculenta_url, params: { suculentum: { idFamily: @suculentum.idFamily, idOrgan: @suculentum.idOrgan, idSuculent: @suculentum.idSuculent, idSustrato: @suculentum.idSustrato, image: @suculentum.image, name: @suculentum.name, temp: @suculentum.temp } }
    end

    assert_redirected_to suculentum_url(Suculentum.last)
  end

  test "should show suculentum" do
    get suculentum_url(@suculentum)
    assert_response :success
  end

  test "should get edit" do
    get edit_suculentum_url(@suculentum)
    assert_response :success
  end

  test "should update suculentum" do
    patch suculentum_url(@suculentum), params: { suculentum: { idFamily: @suculentum.idFamily, idOrgan: @suculentum.idOrgan, idSuculent: @suculentum.idSuculent, idSustrato: @suculentum.idSustrato, image: @suculentum.image, name: @suculentum.name, temp: @suculentum.temp } }
    assert_redirected_to suculentum_url(@suculentum)
  end

  test "should destroy suculentum" do
    assert_difference('Suculentum.count', -1) do
      delete suculentum_url(@suculentum)
    end

    assert_redirected_to suculenta_url
  end
end
