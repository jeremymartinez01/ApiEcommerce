require "test_helper"

class OrdensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orden = ordens(:one)
  end

  test "should get index" do
    get ordens_url, as: :json
    assert_response :success
  end

  test "should create orden" do
    assert_difference("Orden.count") do
      post ordens_url, params: { orden: { domicilio_did: @orden.domicilio_did, fecha: @orden.fecha, mpago_mpid: @orden.mpago_mpid, oid: @orden.oid, usuario_uid: @orden.usuario_uid } }, as: :json
    end

    assert_response :created
  end

  test "should show orden" do
    get orden_url(@orden), as: :json
    assert_response :success
  end

  test "should update orden" do
    patch orden_url(@orden), params: { orden: { domicilio_did: @orden.domicilio_did, fecha: @orden.fecha, mpago_mpid: @orden.mpago_mpid, oid: @orden.oid, usuario_uid: @orden.usuario_uid } }, as: :json
    assert_response :success
  end

  test "should destroy orden" do
    assert_difference("Orden.count", -1) do
      delete orden_url(@orden), as: :json
    end

    assert_response :no_content
  end
end
