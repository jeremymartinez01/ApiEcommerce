# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Domicilio.create(did: 1,usuario_id: 1,ciudad: "Quito",sector: "La Mariscal",calle_principal: "Avenida Amazonas",calle_secundaria: "Juan León Mera",villa: 3,cod_postal: "170516");
Usuario.create(uid: 1,nombre: "Juan",apellido: "Pérez",user: "juanperez",password: "secreto123",cedula: "1234567890",telefono: "0987654321",correo: "juan@example.com");
