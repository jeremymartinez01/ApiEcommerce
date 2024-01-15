require "test_helper"

class CategoriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categorium = categoria(:one)
  end

  test "should get index" do
    get categoria_url, as: :json
    assert_response :success
  end

  test "should create categorium" do
    assert_difference("Categorium.count") do
      post categoria_url, params: { categorium: { cid: @categorium.cid, nombre: @categorium.nombre } }, as: :json
    end

    assert_response :created
  end

  test "should show categorium" do
    get categorium_url(@categorium), as: :json
    assert_response :success
  end

  test "should update categorium" do
    patch categorium_url(@categorium), params: { categorium: { cid: @categorium.cid, nombre: @categorium.nombre } }, as: :json
    assert_response :success
  end

  test "should destroy categorium" do
    assert_difference("Categorium.count", -1) do
      delete categorium_url(@categorium), as: :json
    end

    assert_response :no_content
  end
end
