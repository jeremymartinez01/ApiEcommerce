require "test_helper"

class DetallesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detalle = detalles(:one)
  end

  test "should get index" do
    get detalles_url, as: :json
    assert_response :success
  end

  test "should create detalle" do
    assert_difference("Detalle.count") do
      post detalles_url, params: { detalle: { cantidad: @detalle.cantidad, detid: @detalle.detid, fecha: @detalle.fecha, orden_oid: @detalle.orden_oid, producto_pid: @detalle.producto_pid } }, as: :json
    end

    assert_response :created
  end

  test "should show detalle" do
    get detalle_url(@detalle), as: :json
    assert_response :success
  end

  test "should update detalle" do
    patch detalle_url(@detalle), params: { detalle: { cantidad: @detalle.cantidad, detid: @detalle.detid, fecha: @detalle.fecha, orden_oid: @detalle.orden_oid, producto_pid: @detalle.producto_pid } }, as: :json
    assert_response :success
  end

  test "should destroy detalle" do
    assert_difference("Detalle.count", -1) do
      delete detalle_url(@detalle), as: :json
    end

    assert_response :no_content
  end
end
