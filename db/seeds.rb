# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

'''
Categorium.create(cid: 1,nombre: "Celulares");
Categorium.create(cid: 2,nombre: "Tvs");
Detalle.create(detid: 1,orden_oid: 1,producto_pid: 1,cantidad: 2,fecha: DateTime.now);
Detalle.create(detid: 2,orden_oid: 2,producto_pid: 2,cantidad: 3,fecha: DateTime.now);
Domicilio.create(did: 1,usuario_id: 1,ciudad: "Quito",sector: "La Mariscal",calle_principal: "Avenida Amazonas",calle_secundaria: "Juan León Mera",villa: 3,cod_postal: "170516");
MetodoPago.create( mpid: 1,metodo: "Tarjeta de crédito");
Orden.create(oid: 1,usuario_uid: 1,mpago_mpid: 1,domicilio_did: 1,fecha: DateTime.now);
Producto.create(pid: 1,usuario_id: 1,categoria: 1,nombre: "Laptop",descripcion: "Portátil de última generación",precio: 1200.50,imagen: "laptop.jpg");
Usuario.create(uid: 1,nombre: "Juan",apellido: "Pérez",user: "juanperez",password: "secreto123",cedula: "1234567890",telefono: "0987654321",correo: "juan@example.com");
'''
## CATEGORIAS
'''
Categorium.create(nombre: "Computadoras de mesa");
Categorium.create(nombre: "Celulares");
Categorium.create(nombre: "Tablets");
Categorium.create(nombre: "Audio y Vídeo");
Categorium.create(nombre: "Laptops");
Categorium.create(nombre: "Periféricos y Dispositivos");
Categorium.create(nombre: "Consolas");
Categorium.create(nombre: "Televisores");
'''
## METODO PAGO
'''
MetodoPago.create(metodo: "Transferencia Bancaria");
MetodoPago.create(metodo: "Tarjeta de Crédito");
MetodoPago.create(metodo: "Tarjeta de Débito");
'''
## PRODUCTOS

# Producto.create(categoria: 1, nombre: "Cpu Usado Core i5 4ta, 4gb+320gb, hp, lenovo", descripcion: "Procesador: Intel Core i5 4ta generación. Sistema Operativo: Microsoft Windows 10. RAM: 4 GB. Almacenamiento: 320 GB. Con unidad óptica.", precio: 146.50, imagen: "https://i.ibb.co/RCXt6Vm/166806-800-auto.png")
Producto.create(categoria: 1, nombre: "Cpu Usado Core i7 6th Gen, 8gb, 500gb, HP, dell", descripcion: "Procesador: Intel Core i7 6ta generación. Sistema Operativo: Microsoft Windows 10. RAM: 8 GB. Almacenamiento: 500 GB. Con unidad óptica.", precio: 255.00, imagen: "https://i.ibb.co/ZXD7L1k/166709-800-auto.png");
Producto.create(categoria: 1, nombre: "Cpu Lenovo gamer Core i7 12700, 1tb+512gb ssd, 16gb RTX 12gb", descripcion: "Procesador: Intel Core i7-12700. RAM: 2x 8GB UDIMM DDR4-3200. Almacenamiento: SSD de 512GB. Gráficos: NVIDIA GeForce RTX 3060 12 GB GDDR6. Sin unidad óptica.", precio: 935.99, imagen: "https://i.ibb.co/Xpb9Lt2/gamer.png");
Producto.create(categoria: 1, nombre: "AIO HP 24/24FHD/CORE I5-1235U /8GB RAM/ 256GB BLACK", descripcion: "Procesador: Intel Core i5-1235U. RAM: 8 GB de memoria RAM DDR4-3200 MHz (1 de 8 GB). Almacenamiento: Unidad de estado sólido PCIe NVMe de 256 GB. Gráficos: Gráficos: Intel Iris Xe. Sin unidad óptica.", precio: 740.00, imagen: "https://i.ibb.co/MDBSt4Z/aiohp.png");
Producto.create(categoria: 1, nombre: "All in One Acer 24 pulg, 128gb+4gb, w11", descripcion: "Procesador: Intel Pentium Silver J5040. RAM: 4 GB de RAM integrada. Almacenamiento: Unidad de estado sólido PCI-e de 128 GB. Gráficos: Intel UHD 605. Sin unidad óptica.", precio: 325.00, imagen: "https://i.ibb.co/WDpB2s8/aioacer.png");

Producto.create(categoria: 2, nombre: "Xiaomi redmi note 12 6+128gb", descripcion: "Pantalla: AMOLED de 6,7p. Procesador: Snapdragon 685 (6 nm). Sistema operativo: MIUI 14 based on Android 13. RAM: 6 GB. Almacenamiento: 128 GB. Cámara trasera: 50 MP. Cámara frontal: 13 MP.", precio: 175.00, imagen: "https://i.ibb.co/fYzSMbL/redmi12.png");
Producto.create(categoria: 2, nombre: "Poco x5 pro 8+256gb 5G", descripcion: "Pantalla: AMOLED de 6,67p. Procesador: Snapdragon 778G Mobile Platform. Sistema operativo: MIUI 14 para POCO. RAM: 8 GB. Almacenamiento: 256 GB. Cámara trasera: 108 MP. Cámara frontal: 16 MP.", precio: 410.00, imagen: "https://i.ibb.co/8dkG7HW/poco.jpg");
Producto.create(categoria: 2, nombre: "Samsung A04E SM-A04EM 64GB de Memoria", descripcion: "Pantalla: LCD PLS de 6,5p touchscreen capacitivo. Procesador: Octa-core. Sistema operativo: Android 12. RAM: 3 GB. Almacenamiento: 64 GB. Cámara trasera: 13 MP. Cámara frontal: 5 MP.", precio: 121.50, imagen: "https://i.ibb.co/K0mPgpR/samsunga04.jpg");
Producto.create(categoria: 2, nombre: "Apple iPhone 13 Pro Max, 128GB", descripcion: "Pantalla: OLED de 6.7p (diagonal) sin marco. Procesador: Chip A15 Bionic. Sistema operativo: iOS 15. Almacenamiento: 128 GB. Cámara: Sistema de cámaras Pro de 12 MP: teleobjetivo, gran angular y ultra gran angular.", precio: 966.00, imagen: "https://i.ibb.co/DCLLcHt/iphone13promax.jpg");
Producto.create(categoria: 2, nombre: "Infinix Smart 7 (4+64GB)", descripcion: "Pantalla: IPS TFT de 6,6p. Sistema operativo: Android 12. RAM: 4 GB, expandible a 7 GB. Almacenamiento: 64 GB. Cámara trasera: 13 MP + Lente IA. Cámara frontal: 5 MP.", precio: 95.00, imagen: "https://i.ibb.co/GJfcdV1/infinix.png");

Producto.create(categoria: 3, nombre: "Amazon Fire 7 16 GB", descripcion: "Pantalla: HD de 7 pulgadas. Procesador: Quad-core 2.0 GHz. Sistema Operativo: Fire OS. RAM: 2 GB. Almacenamiento: 16 GB. Cámara Trasera: 2 MP. Cámara Frontal: 2 MP.", precio: 45.00, imagen: "https://i.ibb.co/qjF109L/amazonfire7.png");
Producto.create(categoria: 3, nombre: "Samsung A7 LITE 3 GB + 32 GB", descripcion: "Pantalla: Pantalla de 8,7p. Procesador: Mediatek MT8768T Helio P22T (12 nm). Sistema Operativo: Android 11 con One UI 5.1. RAM: 3 GB. Almacenamiento: 32 GB. Cámara Trasera: 8 MP. Cámara Frontal: 2 MP.", precio: 168.00, imagen: "https://i.ibb.co/FJRzNv7/samstaba7.jpg");

Producto.create(categoria: 4, nombre: "Parlante JBL Charge 5", descripcion: "Versión Bluetooth: 5.1. Tiempo máximo de reproducción de música: 20 horas. Potencia de salida (W): 30W RMS para woofer, 10W RMS para tweeter.", precio: 165.00, imagen: "https://i.ibb.co/jJqFqHL/jbl.webp");

Producto.create(categoria: 5, nombre: "Lenovo v14 Celeron-4020 8GB RAM - 256GB Azul", descripcion: "Pantalla: 14p FHD (1920x1080) antirreflejo. Procesador: Intel Celeron N4020. Sistema Operativo: Free DOS. RAM: DDR4-2400 soldado de 8GB. Almacenamiento: SSD de 256 GB. Gráficos: Intel UHD 600 integrados. Sin unidad óptica.", precio: 290.90, imagen: "https://i.ibb.co/k9nDTqF/lenovo.png");

Producto.create(categoria: 6, nombre: "Cable Tipo C Carga rápida", descripcion: "Material: TPE. Interfaz: tipo C. Corriente del cable: hasta 6 A (máx.). Velocidad de sincronización de datos: hasta 480 Mbps. Longitud: 1m.", precio: 3.25, imagen: "https://i.ibb.co/GQw6YLR/cablec.png");
Producto.create(categoria: 6, nombre: "Tarjeta De Memoria Micro Sd 32 Gb Adata Class 100", descripcion: "Certificación: FCC, CE, BSMI, VCCI. Velocidad de lectura: 30 MB/s. Velocidad de escritura: 10 MB/s. Capacidad: 32 gb.", precio: 4.50, imagen: "https://i.ibb.co/q1qdMst/tarjeta32.png");
Producto.create(categoria: 6, nombre: "POWER BANK 20.000 mah HAVIT PB91", descripcion: "Capacidad: 20000mAh. Voltaje de entrada: Micro USB: CC 5 V/2 A; Tipo-C: 5V/2A. Tensión de salida: USB1 y USB2: CC 5 V/2,4 A (máx.). Tipo de conector: Micro USB, tipo C, 2x USB.", precio: 15.00, imagen: "https://i.ibb.co/s92CmLS/powerbank.jpg");

Producto.create(categoria: 7, nombre: "Xbox Serie S 512gb", descripcion: "Almacenamiento interno: SSD NVME personalizado de 512 GB.", precio: 425.00, imagen: "https://i.ibb.co/G75KB3w/xboxs.jpg");
Producto.create(categoria: 7, nombre: "Consola PS4", descripcion: "Almacenamiento interno: 1 tb", precio: 325.00, imagen: "https://i.ibb.co/kXMQgkv/ps4.png");
Producto.create(categoria: 7, nombre: "Nintendo Switch OLED", descripcion: "Pantalla: OLED de 7p", precio: 480.00, imagen: "https://i.ibb.co/KqT6GjF/switch.png");

Producto.create(categoria: 8, nombre: "Televisor TCL 55 (55C635) QLED 4k", descripcion: "Tipo de pantalla: D-LED. Tipo de tecnología: QLED. Núcleo de la CPU: A55x4 1,3 GHz. Núcleo de GPU: G31 MP2 800 MHz. Sistema operativo: Google TV.", precio: 500.00, imagen: "https://i.ibb.co/nj3tBxH/tcl.png");
