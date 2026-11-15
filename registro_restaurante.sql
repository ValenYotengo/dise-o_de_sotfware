-- insentar registro de clientes

INSERT INTO restaurante.clientes (id_cliente, nombre_cliente, celular_cliente, direccion_cliente, barrio_cliente) VALUES
('1010123456', 'juana cosntain', '3104567890', 'Calle 5 # 14-20', 'Ciudad Córdoba'),
('1020654321', 'david ramirez', '3157778899', 'Carrera 9 # 45-12', 'barrio los hoyos'),
('1030987654', 'alice rodriguez', '3181112233', 'Avenida 6N # 23-45', 'centro'),
('1040112233', 'Maria de la paz', '3179998877', 'Calle 10 # 3-15', 'San Antonio'),
('1050334455', 'Andres constain', '3162223344', 'Calle 13 # 85-10', 'barrio chiman');


--insentar registro de categoria

INSERT INTO restaurante.categoria (id_categoria, nombre_categoria) VALUES
(1, 'Entradas'),
(2, 'Platos Fuertes'),
(3, 'Bebidas');

--insertar registro de domiciliario 

INSERT INTO restaurante.domiciliarios (id_domiciliario, nombre_domiciliario, celular_domoiciliario) VALUES
('DOM01', 'Wilmer Caicedo', '3114445566'),
('DOM02', 'Yesica Riascos', '3125556677'),
('DOM03', 'Carlos Estacio', '3136667788');

--insertar registro de moto

INSERT INTO restaurante.motos (id_motos, modelo, vencimiento_soat, id_domiciliario) VALUES
('ABC12D', 'Yamaha FZ 150', '2027-05-15', 'DOM01'),
('XY298E', 'Suzuki Gixxer 250', '2027-08-20', 'DOM02'),
('MNO45F', 'Bajaj Pulsar NS200', '2027-01-10', 'DOM03');

--insertar registro de plato

INSERT INTO restaurante.platos (id_plato, nombre_plato, precio, id_categoria) VALUES
(1, 'Encocado de piangua', 35000.00, 2),
(2, 'Jugo de borojó', 8000.00, 3),
(3, 'Sancocho de pescado', 32000.00, 2),
(4, 'Arroz con camarón', 38000.00, 2);

--insetar registro de pedido 

INSERT INTO restaurante.pedidos (id_pedidos, fecha_pedido, esta, id_cliente, id_domiciliario) VALUES
(101, '2026-10-03 12:30:00', 'Entregado', '1010123456', 'DOM01'),
(102, '2026-10-03 13:15:00', 'Entregado', '1020654321', 'DOM01'),
(103, '2026-10-04 14:00:00', 'En camino', '1010123456', 'DOM02');

--insetar registro de detalles 

INSERT INTO restaurante.detalles (id_detalle, id_pedidos, id_plato, cantidad, orecio_cobrado) VALUES
(1, 101, 1, 2, 35000.00), -- 2 encocados para el pedido 101
(2, 101, 2, 1, 8000.00),  -- 1 jugo de borojó para el pedido 101
(3, 102, 3, 1, 32000.00), -- 1 sancocho para el pedido 102
(4, 103, 4, 1, 38000.00); -- 1 arroz con camarón para el pedido 103











