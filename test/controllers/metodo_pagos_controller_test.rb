require "test_helper"

class MetodoPagosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metodo_pago = metodo_pagos(:one)
  end

  test "should get index" do
    get metodo_pagos_url, as: :json
    assert_response :success
  end

  test "should create metodo_pago" do
    assert_difference("MetodoPago.count") do
      post metodo_pagos_url, params: { metodo_pago: { metodo: @metodo_pago.metodo, mpid: @metodo_pago.mpid } }, as: :json
    end

    assert_response :created
  end

  test "should show metodo_pago" do
    get metodo_pago_url(@metodo_pago), as: :json
    assert_response :success
  end

  test "should update metodo_pago" do
    patch metodo_pago_url(@metodo_pago), params: { metodo_pago: { metodo: @metodo_pago.metodo, mpid: @metodo_pago.mpid } }, as: :json
    assert_response :success
  end

  test "should destroy metodo_pago" do
    assert_difference("MetodoPago.count", -1) do
      delete metodo_pago_url(@metodo_pago), as: :json
    end

    assert_response :no_content
  end
end
