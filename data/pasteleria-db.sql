PRAGMA defer_foreign_keys=TRUE;
CREATE TABLE productos (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre TEXT NOT NULL,
  descripcion TEXT,
  precio INTEGER NOT NULL,
  categoria TEXT, -- Ej: 'Pizzas', 'Empanadas', 'Postres', 'Bebidas'
  imagen_url TEXT,
  disponible BOOLEAN DEFAULT 1
, categoria_id INTEGER REFERENCES categorias(id), stock INTEGER DEFAULT 0, gestionar_stock BOOLEAN DEFAULT 0, ingredientes TEXT);
INSERT INTO "productos" VALUES(1,'Napolitana','Pizza individual de 20 cm.',3500,'Pizzas','https://imagenes.pasteleriahijitos.cl/carta/pizza/pizzanapolitana.webp',1,1,0,0,'Tomate, queso, jamón, aceituna, pimiento');
INSERT INTO "productos" VALUES(2,'Pollo BBQ',NULL,6990,'Pizzas','https://imagenes.pasteleriahijitos.cl/carta/pizza/pizza-pollo-bbq.webp',1,1,0,0,'Pollo, salsa, cebolla caramelizada, queso');
INSERT INTO "productos" VALUES(3,'Chorri Pizza',NULL,8990,'Pizzas','https://imagenes.pasteleriahijitos.cl/carta/pizza/chorripizza.webp',1,1,0,0,'Papas fritas, 2 huevos, churrasco, chorizo, cebolla caramelizada.');
INSERT INTO "productos" VALUES(4,'Fugazzeta','',4500,'Pizzas','https://imagenes.pasteleriahijitos.cl/carta/pizzas/fugazzeta.webp',1,1,0,0,'Cebolla, queso');
INSERT INTO "productos" VALUES(5,'Primavera','',4990,'Pizzas','https://imagenes.pasteleriahijitos.cl/carta/pizzas/primavera.webp',1,1,0,0,'Queso, champiñón, choclo, pimiento');
INSERT INTO "productos" VALUES(6,'Doble Queso',NULL,4000,'Pizzas','https://imagenes.pasteleriahijitos.cl/carta/pizza/pizzadoblequeso.webp',1,1,0,0,'Pizza con doble porción de queso');
INSERT INTO "productos" VALUES(7,'Empanada de Pino',NULL,2500,'Empanadas','https://imagenes.pasteleriahijitos.cl/carta/empanada/empanada-de-pino.webp',0,2,0,0,NULL);
INSERT INTO "productos" VALUES(8,'Empanada de Marisco',NULL,2990,'Empanadas','https://imagenes.pasteleriahijitos.cl/carta/empanada/empanadasdemariscos.webp',1,2,0,0,NULL);
INSERT INTO "productos" VALUES(9,'Empanada Camarón Queso',NULL,3990,'Empanadas','https://imagenes.pasteleriahijitos.cl/carta/empanada/empanadacamronqueso.webp',1,2,0,0,NULL);
INSERT INTO "productos" VALUES(10,'Empanada de Queso',NULL,2000,'Empanadas','https://imagenes.pasteleriahijitos.cl/carta/empanada/queso-solo-fritas.webp',1,2,0,0,NULL);
INSERT INTO "productos" VALUES(11,'Omelette Solo',NULL,2990,'Desayuno','https://imagenes.pasteleriahijitos.cl/carta/desayuno/omelette.webp',1,3,0,0,'Omelette simple');
INSERT INTO "productos" VALUES(12,'Omelette Jamón Queso',NULL,3800,'Desayuno','https://imagenes.pasteleriahijitos.cl/carta/desayuno/omelette-jamon-queso.webp',1,3,0,0,'Omelette con jamón y queso');
INSERT INTO "productos" VALUES(13,'Tostado Jamón Queso',NULL,2200,'Desayuno','https://imagenes.pasteleriahijitos.cl/carta/desayuno/tostadajamonqueso.webp',1,3,0,0,'En pan de molde');
INSERT INTO "productos" VALUES(14,'Tostado Palta',NULL,1800,'Desayuno','https://imagenes.pasteleriahijitos.cl/carta/desayuno/tostadapalta.webp',1,3,0,0,NULL);
INSERT INTO "productos" VALUES(15,'Copa Helada','',8490,'Postres','https://imagenes.pasteleriahijitos.cl/carta/postres/copa-helada.webp',1,4,0,0,'3 bolas de helado a elección, crema, 1 topping, 1 salsa.');
INSERT INTO "productos" VALUES(16,'Banana Split',NULL,9990,'Postres','https://imagenes.pasteleriahijitos.cl/carta/postres/bananasplit.webp',1,4,0,0,'1 platano, 3 bolas de helado a elección, crema, 1 topping, 1 salsa. ');
INSERT INTO "productos" VALUES(17,'Panqueque con Manjar y helado','',4990,'Postres','https://imagenes.pasteleriahijitos.cl/carta/postres/panqueque-con-manjar-y-helado.webp',1,4,0,0,'2 panqueques con manjar, 1 bola de helado a elección, 1 salsa.');
INSERT INTO "productos" VALUES(18,'Jugo Natural',NULL,3500,'Bebidas','https://imagenes.pasteleriahijitos.cl/carta/bebidas/jugosnaturales.webp',1,5,0,0,'Sabores disponibles: Durazno, Melón, Frutilla, Mango, Piña.');
INSERT INTO "productos" VALUES(19,'Leche con platano','',3990,'Bebidas','https://imagenes.pasteleriahijitos.cl/carta/bebidas/leche-con-platano.webp',1,5,0,0,'Leche, plátano.');
INSERT INTO "productos" VALUES(20,'Bebida Lata',NULL,2000,'Bebidas','https://imagenes.pasteleriahijitos.cl/carta/bebidas/bebidaenlata.webp',1,5,0,0,NULL);
INSERT INTO "productos" VALUES(21,'Bebida 1 Litro',NULL,3500,'Bebidas','https://imagenes.pasteleriahijitos.cl/carta/bebidas/bebidaslitro.webp',1,5,0,0,NULL);
INSERT INTO "productos" VALUES(22,'Té',NULL,1500,'Bebidas','https://imagenes.pasteleriahijitos.cl/carta/bebidas/te.webp',1,5,0,0,NULL);
INSERT INTO "productos" VALUES(23,'Helado (1 porción)',NULL,1500,'Helados','https://imagenes.pasteleriahijitos.cl/carta/helados/helado1bola.webp',1,6,0,0,NULL);
INSERT INTO "productos" VALUES(24,'Helado (2 porciones)',NULL,2800,'Helados','https://imagenes.pasteleriahijitos.cl/carta/helados/helado2bola.webp',1,6,0,0,NULL);
INSERT INTO "productos" VALUES(25,'Helado (3 porciones)',NULL,3800,'Helados','https://imagenes.pasteleriahijitos.cl/carta/helados/helado3bola.webp',1,6,0,0,NULL);
INSERT INTO "productos" VALUES(26,'Topping Extra',NULL,500,'Helados','https://imagenes.pasteleriahijitos.cl/carta/helados/toppings.webp',1,6,0,0,'Agregado de topping');
INSERT INTO "productos" VALUES(27,'Café','taza 200cc',2500,'Bebidas','https://imagenes.pasteleriahijitos.cl/carta/bebidas/cafe.webp',1,5,0,0,'Café Nescafe');
INSERT INTO "productos" VALUES(28,'Mocaccino','taza 200cc',3500,'Bebidas','https://imagenes.pasteleriahijitos.cl/carta/bebidas/mocaccino.webp',1,5,0,0,'Mocaccino Nescafe');
INSERT INTO "productos" VALUES(29,'Capuchino','taza 200cc',3500,'Bebidas','https://imagenes.pasteleriahijitos.cl/carta/bebidas/capuccino.webp',1,5,0,0,'Capuccino Nescafe');
INSERT INTO "productos" VALUES(30,'Chocolatada','taza 200cc',3000,'Bebidas','https://imagenes.pasteleriahijitos.cl/carta/bebidas/chocolatada.webp',1,5,0,0,'Chocolatada Nescafe');
INSERT INTO "productos" VALUES(31,'Americana',NULL,6990,'Hamburguesas','https://imagenes.pasteleriahijitos.cl/carta/Hamburguesas/americana.webp',1,7,0,0,'Tomate, lechuga, cebolla caramelizada, panceta, queso, salsa bbq y mayonesa.');
INSERT INTO "productos" VALUES(32,'Cheese Burger',NULL,6990,'Hamburguesas','https://imagenes.pasteleriahijitos.cl/carta/Hamburguesas/cheeseburguer.webp',1,7,0,0,'Cheddar, Queso, Tocino, Cebolla Caramelizada.');
INSERT INTO "productos" VALUES(33,'Barros Luco',NULL,5000,'Sandwich','https://imagenes.pasteleriahijitos.cl/carta/Sandwich/barrosluco.webp',1,8,0,0,'Carne, Queso');
INSERT INTO "productos" VALUES(34,'Italiano','',5700,'Sandwich','https://imagenes.pasteleriahijitos.cl/carta/Sandwich/italiano.webp',1,8,0,0,'Carne, tomate, Palta, Mayo');
INSERT INTO "productos" VALUES(35,'Chacarero',NULL,5700,'Sandwich','https://imagenes.pasteleriahijitos.cl/carta/Sandwich/chacarero.webp',1,8,0,0,'Tomate, Poroto verde, Ají verde (opcional)');
INSERT INTO "productos" VALUES(36,'Escalopa (Milanesa)',NULL,7500,'Sandwich','https://imagenes.pasteleriahijitos.cl/carta/Sandwich/milanesa.webp',1,8,0,0,'Vacuno, Tomate, Lechuga, Huevo duro');
INSERT INTO "productos" VALUES(37,'Paila de Huevos',NULL,3000,'Desayuno','https://imagenes.pasteleriahijitos.cl/carta/desayuno/pailahuevos.webp',1,3,0,0,'Huevos');
INSERT INTO "productos" VALUES(38,'Café Helado',NULL,6990,'Bebidas','https://imagenes.pasteleriahijitos.cl/carta/bebidas/cafehelado.webp',1,5,0,0,'Helado lúcuma o vainilla, café nescafe, leche, crema. ');
INSERT INTO "productos" VALUES(39,'Completo (Chico)','Americano o Chucrut',2000,'Completos','https://imagenes.pasteleriahijitos.cl/carta/completos/completo.webp',1,9,0,0,'Americano, Chucrut, Tomate');
INSERT INTO "productos" VALUES(40,'Completo (Grande)','Americano o Chucrut',3000,'Completos','https://imagenes.pasteleriahijitos.cl/carta/completos/completo.webp',1,9,0,0,'Americano, Chucrut, Tomate');
INSERT INTO "productos" VALUES(41,'Italiano (Chico)',NULL,2500,'Completos','https://imagenes.pasteleriahijitos.cl/carta/completos/italianochico.webp',1,9,0,0,'Tomate, Palta, Mayo');
INSERT INTO "productos" VALUES(42,'Italiano (Grande)',NULL,3500,'Completos','https://imagenes.pasteleriahijitos.cl/carta/completos/italianogrande.webp',1,9,0,0,'Tomate, Palta, Mayo');
INSERT INTO "productos" VALUES(43,'AS (Chico)','',3000,'Completos','https://imagenes.pasteleriahijitos.cl/carta/completos/aschico.webp',1,9,0,0,'Italiano o luco ');
INSERT INTO "productos" VALUES(44,'AS (Grande)','',4000,'Completos','https://imagenes.pasteleriahijitos.cl/carta/completos/asgrande.webp',1,9,0,0,'Italiano o luco.');
INSERT INTO "productos" VALUES(45,'Chorrillana (2 Personas)','',8990,'Papas','https://imagenes.pasteleriahijitos.cl/carta/papas/chorrillana--2-personas-.webp',1,10,0,0,'Longaniza, Churrasco, Cebolla Caramelizada, 2 Huevos.');
INSERT INTO "productos" VALUES(46,'Papas Fritas (Grande)',NULL,4990,'Papas','https://imagenes.pasteleriahijitos.cl/carta/papas/papasgrandes.webp',1,10,0,0,'Papas Fritas');
INSERT INTO "productos" VALUES(47,'Papas Fritas (Chica)',NULL,2000,'Papas','https://imagenes.pasteleriahijitos.cl/carta/papas/papaschicas.webp',1,10,0,0,'Papas Fritas');
INSERT INTO "productos" VALUES(48,'Salchipapa',NULL,6000,'Papas','https://imagenes.pasteleriahijitos.cl/carta/papas/salchipapa.webp',1,10,0,0,'Papas Fritas, Salchicha.');
INSERT INTO "productos" VALUES(49,'Tartaleta de fruta','',2500,'Pastelería','https://imagenes.pasteleriahijitos.cl/carta/pasteleria/tartaleta-de-fruta.webp',1,11,0,0,'Fruta de la estación, Crema pastelera');
INSERT INTO "productos" VALUES(50,'Kuchen de manzana nuez','',2500,'Pastelería','https://imagenes.pasteleriahijitos.cl/carta/pasteleria/kuchen-de-manzana-nuez.webp',1,11,0,0,'Manzana, Nuez');
INSERT INTO "productos" VALUES(51,'Cocada manjar','',2500,'Pastelería','https://imagenes.pasteleriahijitos.cl/carta/pasteleria/cocada-manjar.webp',1,11,0,0,'Coco, Manjar');
INSERT INTO "productos" VALUES(52,'Pie de limón','',2500,'Pastelería','https://imagenes.pasteleriahijitos.cl/carta/pasteleria/pie-de-limon.webp',1,11,0,0,'Limón, Merengue');
INSERT INTO "productos" VALUES(53,'Alfajor de maicena','',2500,'Pastelería','https://imagenes.pasteleriahijitos.cl/carta/pasteleria/alfajor-de-maicena.webp',1,11,0,0,'Maicena, Manjar, Coco');
INSERT INTO "productos" VALUES(54,'Alfajor de maicena bañado en chocolate','',2500,'Pastelería','https://imagenes.pasteleriahijitos.cl/carta/pasteleria/alfajor-de-maicena-banado-en-chocolate.webp',1,11,0,0,'Maicena, Manjar, Chocolate');
INSERT INTO "productos" VALUES(55,'Alfajor Premium Dubai Pistacho','',4990,'Pastelería','https://imagenes.pasteleriahijitos.cl/carta/pasteleria/alfajor-premium-dubai-pistacho.webp',1,11,0,0,'Pistacho, Chocolate');
INSERT INTO "productos" VALUES(56,'Bomba de chocolate','',4490,'Pastelería','https://imagenes.pasteleriahijitos.cl/carta/pasteleria/bomba-de-chocolate.webp',1,11,0,0,'Chocolate, Crema');
INSERT INTO "productos" VALUES(57,'Alfajor Premium de Nutella','',4590,'Pastelería','https://imagenes.pasteleriahijitos.cl/carta/pasteleria/alfajor-premium-de-nutella.webp',0,11,0,0,'Nutella, Chocolate');
INSERT INTO "productos" VALUES(58,'Trozo milhojas','',3500,'Pastelería','https://imagenes.pasteleriahijitos.cl/carta/pasteleria/trozo-milhojas.webp',1,11,0,0,'Milhojas, Manjar');
INSERT INTO "productos" VALUES(59,'Pastelitos','',400,'Pastelería','https://imagenes.pasteleriahijitos.cl/carta/pasteleria/pastelitos.webp',1,11,0,0,'Surtidos');
INSERT INTO "productos" VALUES(60,'Chilenitos','',2500,'Pastelería','https://imagenes.pasteleriahijitos.cl/carta/pasteleria/chilenitos.webp',1,11,0,0,'Chilenitos Manjar');
INSERT INTO "productos" VALUES(61,'Empanada Napolitana','',3990,'Empanadas','https://imagenes.pasteleriahijitos.cl/carta/empanadas/empanada-napolitana.webp',1,2,0,0,'');
INSERT INTO "productos" VALUES(62,'Muffins de Arándano','',2500,'Pastelería','https://imagenes.pasteleriahijitos.cl/carta/pasteleria/muffins-de-ar%C3%A1ndano.webp',1,11,0,0,'Arándano, crema.');
INSERT INTO "productos" VALUES(63,'Kuchen de membrillo','',2500,'Pastelería','https://imagenes.pasteleriahijitos.cl/carta/pasteleria/kuchen-de-membrillo.webp',1,11,0,0,'Dulce de membrillo.');
INSERT INTO "productos" VALUES(64,'Alfajor de membrillo','Alfajor de dulce de membrillo con cobertura de chocolate blanco.',2500,'Pastelería','https://imagenes.pasteleriahijitos.cl/carta/pasteleria/alfajor-de-membrillo.webp',1,11,0,0,'Dulce de membrillo, chocolate blanco.');
INSERT INTO "productos" VALUES(65,'Delicia','',2500,'Pastelería','https://imagenes.pasteleriahijitos.cl/carta/pasteleria/delicia.webp',1,11,0,0,'Dulce de frambuesa ');
INSERT INTO "productos" VALUES(66,'Combo 1','Combo triple',9990,'Combos','https://imagenes.pasteleriahijitos.cl/carta/combos/combo-1.webp',1,12,0,0,'Hamburguesa + papas fritas + bebida en lata.');
INSERT INTO "productos" VALUES(67,'Combo 2','',4990,'Combos','https://imagenes.pasteleriahijitos.cl/carta/combos/combo-2.webp',1,12,0,0,'Pizza pepperoni o napolitana + bebida en lata.');
INSERT INTO "productos" VALUES(68,'Pepperoni ','',3500,'Pizzas','https://imagenes.pasteleriahijitos.cl/carta/pizzas/pepperoni-.webp',1,1,0,0,'Queso, pepperoni.');
INSERT INTO "productos" VALUES(69,'Alfajor de crema de maní ','',4590,'Pastelería','',1,11,0,0,'Crema de maní.');
INSERT INTO "productos" VALUES(70,'Torta de tres leches.','',3500,'Pastelería','',1,11,0,0,'');
CREATE TABLE categorias (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre TEXT NOT NULL,
  orden INTEGER DEFAULT 0,
  activa BOOLEAN DEFAULT 1
);
INSERT INTO "categorias" VALUES(1,'Pizzas',2,1);
INSERT INTO "categorias" VALUES(2,'Empanadas',3,1);
INSERT INTO "categorias" VALUES(3,'Desayuno',8,1);
INSERT INTO "categorias" VALUES(4,'Postres',9,1);
INSERT INTO "categorias" VALUES(5,'Bebidas',11,1);
INSERT INTO "categorias" VALUES(6,'Helados',10,1);
INSERT INTO "categorias" VALUES(7,'Hamburguesas',4,1);
INSERT INTO "categorias" VALUES(8,'Sandwich',5,1);
INSERT INTO "categorias" VALUES(9,'Completos',6,1);
INSERT INTO "categorias" VALUES(10,'Papas',7,1);
INSERT INTO "categorias" VALUES(11,'Pastelería',12,1);
INSERT INTO "categorias" VALUES(12,'Combos',1,1);
CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password_hash TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO "users" VALUES(1,'Benja','$2b$10$GwF5cuXpEhH6XK8yMFEt.uq0kWoOpAK9h0gBlG2rr2pvxK.DeiCj6','2026-02-16 05:06:50');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('productos',70);
INSERT INTO "sqlite_sequence" VALUES('categorias',12);
INSERT INTO "sqlite_sequence" VALUES('users',1);
