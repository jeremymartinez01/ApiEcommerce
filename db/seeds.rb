# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Categorium.create(cid: 1,nombre: "Celulares");
Categorium.create(cid: 2,nombre: "Tvs");
Detalle.create(detid: 1,orden_oid: 1,producto_pid: 1,cantidad: 2,fecha: DateTime.now);
Detalle.create(detid: 2,orden_oid: 2,producto_pid: 2,cantidad: 3,fecha: DateTime.now);
Domicilio.create(did: 1,usuario_id: 1,ciudad: "Quito",sector: "La Mariscal",calle_principal: "Avenida Amazonas",calle_secundaria: "Juan León Mera",villa: 3,cod_postal: "170516");
MetodoPago.create( mpid: 1,metodo: "Tarjeta de crédito");
Orden.create(oid: 1,usuario_uid: 1,mpago_mpid: 1,domicilio_did: 1,fecha: DateTime.now);
Producto.create(pid: 1,usuario_id: 1,categoria: 1,nombre: "Laptop",descripcion: "Portátil de última generación",precio: 1200.50,imagen: "laptop.jpg");
Usuario.create(uid: 1,nombre: "Juan",apellido: "Pérez",user: "juanperez",password: "secreto123",cedula: "1234567890",telefono: "0987654321",correo: "juan@example.com");
