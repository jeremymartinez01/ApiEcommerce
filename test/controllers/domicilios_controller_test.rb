require "test_helper"

class DomiciliosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @domicilio = domicilios(:one)
  end

  test "should get index" do
    get domicilios_url, as: :json
    assert_response :success
  end

  test "should create domicilio" do
    assert_difference("Domicilio.count") do
      post domicilios_url, params: { domicilio: { calle_principal: @domicilio.calle_principal, calle_secundaria: @domicilio.calle_secundaria, ciudad: @domicilio.ciudad, cod_postal: @domicilio.cod_postal, did: @domicilio.did, sector: @domicilio.sector, usuario_id: @domicilio.usuario_id, villa: @domicilio.villa } }, as: :json
    end

    assert_response :created
  end

  test "should show domicilio" do
    get domicilio_url(@domicilio), as: :json
    assert_response :success
  end

  test "should update domicilio" do
    patch domicilio_url(@domicilio), params: { domicilio: { calle_principal: @domicilio.calle_principal, calle_secundaria: @domicilio.calle_secundaria, ciudad: @domicilio.ciudad, cod_postal: @domicilio.cod_postal, did: @domicilio.did, sector: @domicilio.sector, usuario_id: @domicilio.usuario_id, villa: @domicilio.villa } }, as: :json
    assert_response :success
  end

  test "should destroy domicilio" do
    assert_difference("Domicilio.count", -1) do
      delete domicilio_url(@domicilio), as: :json
    end

    assert_response :no_content
  end
end
