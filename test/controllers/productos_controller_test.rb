require "test_helper"

class ProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @producto = productos(:one)
  end

  test "should get index" do
    get productos_url, as: :json
    assert_response :success
  end

  test "should create producto" do
    assert_difference("Producto.count") do
      post productos_url, params: { producto: { categoria: @producto.categoria, descripcion: @producto.descripcion, imagen: @producto.imagen, nombre: @producto.nombre, pid: @producto.pid, precio: @producto.precio, usuario_id: @producto.usuario_id } }, as: :json
    end

    assert_response :created
  end

  test "should show producto" do
    get producto_url(@producto), as: :json
    assert_response :success
  end

  test "should update producto" do
    patch producto_url(@producto), params: { producto: { categoria: @producto.categoria, descripcion: @producto.descripcion, imagen: @producto.imagen, nombre: @producto.nombre, pid: @producto.pid, precio: @producto.precio, usuario_id: @producto.usuario_id } }, as: :json
    assert_response :success
  end

  test "should destroy producto" do
    assert_difference("Producto.count", -1) do
      delete producto_url(@producto), as: :json
    end

    assert_response :no_content
  end
end
