/*==============================================================*/
/* Ingreso de Datos Asegurados.                                 */
/*==============================================================*/
insert into asegurado(id_asesor,nombre_asegurado,apellido_asegurado,cedula_asegurado,domicilio_asegurado,correo_asegurado,
telefono_asegurado)
values ('1','Britney','Lopez','1314857091','Urbanizacion Si Vivienda','britney-lopez@outlook.es','0999434156'),
('1','Fernando','Galindo','1305631235','Los Geranios','fernando-galindo@hotmail.com','0993214212'),
('1','Alberto','Franco','1303753618','Cuba','alberto-franco.90@gmail.com','0985721354'),
('1','Hernan','Velez','1304162983','Las Cumbres','hernan_velez.87@hotmail.com','0988731249'),
('2','Agustin','Villavicencio','1304603259','El Paraiso','agustin-villa15@hotmail.com','0954786524'),
('2','Sofia','Mendez','1315749873','La Aurora','sofia_mendez@gmail.com','0976542245'),
('2','Bryan','Rivas','1318765831','Costa Azul','bryan-rivas.87@gmail.com','0942131434'),
('2','David','Quiroz','1331234211','Tarqui','david-quiroz.97@outlook.es','0987583126'),
('2','Melani','Bello','1313143265','La Pradera','melani_bello.65@hotmail.com','0985324678'),
('2','Silvana','Macias','1306878492','Jocay','silvana-macias.33@outlook.es','0957860135'),
('2','Yandri','Tuarez','1386594213','20 de Mayo','yandri-tuarez.3@hotmail.com','0946990424');
/*==============================================================*/
/* Ingreso de Datos Asesores.                                   */
/*==============================================================*/
insert into asesor (nombre_asesor,apellido_asesor,cedula_asesor,asesorias_realizada)
values('Julio','Delgado','1314567213','4'),
('Amparo','Bailon','1312507256','7');
/*==============================================================*/
/* Ingreso de Datos Beneficiarios.                              */
/*==============================================================*/
insert into beneficiario (id_asegurado,nombre_beneficiario,apellido_beneficiario,cedula_beneficiario,
domicilio_beneficiario,telefono_beneficiario,relacion_asegurado,fecha_de_nacimiento)
values ('1','Alfredo','Lopez','1304532346','Urbanizacion Si Vivienda','0987512356','Hijo','2010-02-14'),
('1','Samuel','Lopez','1309862350','Urbanizacion Si Vivienda','0987512356','Hijo','2008-06-01'),
('2','Melisa','Galindo','1316875324','Los Geranios','0987512373','Hija','2006-07-20'),
('3','Maritza','Franco','1309571376','Cuba','0997763458','Hija','2016-03-23'),
('3','Pedro','Franco','1305883120','Cuba','0997763458','Hijo','2008-08-22'),
('4','Dayana','Muentes','1315893205','Las Cumbres','0990098413','Hija','2016-03-17'),
('5','Michael','Villavicencio','1315807324','El Paraiso','0990193125','Hijo','2010-05-26'),
('6','Milena','Mendez','1315976831','La Aurora','0987835678','Hija','2010-04-23'),
('7','Alison','Rivas','1316932434','Costa Azul','0997763458','Hija','2008-05-04'),
('8','Juan','Quiroz','1305912367','Tarqui','0987583126','Hijo','2016-03-17'),
('9','Adriana','Bello','1309913253','La Pradera','0951023502','Hija','2008-08-15'),
('10','Carlos','Macias','1305998213','Jocay','0957860135','Hijo','2011-02-17'),
('11','Yuli','Tuarez','1315213596','20 de Mayo','0955890532','Hija','2013-04-03'),
('11','Daniel','Tuarez','1315215396','20 de Mayo','0955890542','Hijo','2012-04-24');
/*==============================================================*/
/* Ingreso de Datos Contratos.                                  */
/*==============================================================*/
insert into contrato (id_seguro,id_asegurado,descripcion_contrato,estado_contrato,fechainicio_contrato,fechafinal_contrato,
pago_mensual)
values ('1','1','Seguro de Hogar','Activo','2022-06-03','2023-06-03','220'),
('1','2','Seguro Vehicular','Inactivo','2021-06-04','2022-06-04','190'),
('1','3','Seguro Vehicular','Activo','2022-07-06','2023-07-07','195'),
('1','4','Seguro de Vida','Inactivo','2020-01-20','2021-01-20','135'),
('1','5','Seguro de Vida','Inactivo','2020-07-02','2021-07-02','140'),
('1','6','Seguro Vehicular','Inactivo','2018-09-16','2019-09-16','190'),
('1','7','Seguro de Hogar','Activo','2021-10-15','2022-10-15','225'),
('1','8','Seguro Vehicular','Inactivo','2017-05-04','2018-05-05','140'),
('1','9','Seguro Vehicular','Inactivo','2019-03-08','2020-03-08','190');
/*==============================================================*/
/* Ingreso de Datos Seguro.                                     */
/*==============================================================*/
insert into seguro(id_tipos_seguros, detalle_seguro,ventajas_seguro)
values('1','Cobertura a nivel nacional', 'Al contratar un seguro recibe 3 meses de gracia');
/*==============================================================*/
/* Ingreso de Datos Tipo de Seguro.                             */
/*==============================================================*/
insert into tipo_de_seguro(id_seguro_vida,id_seguro_hogar,id_seguro_vehicular)
values('1','1','1');
/*==============================================================*/
/* Ingreso de Datos Seguro de Vida.                             */
/*==============================================================*/
insert into seguro_de_vida(beneficios_seguro_vida,cobertura_seguro_vida,prima_seguro_vida) 
values('Atencion medica para emergencias las 24 horas del dia','Proteccion en caso de accidentes laborales','132');
/*==============================================================*/
/* Ingreso de Datos Seguro de Hogar.                            */
/*==============================================================*/
insert into seguro_de_hogar(cobertura_seguro_hogar,beneficios_seguro_hogar,prima_seguro_hogar) 
values('Proteccion contra robo','Boton de seguridad con personal disponible las 24 horas','215');
/*==============================================================*/
/* Ingreso de Datos Seguro de Vida.                             */
/*==============================================================*/
insert into seguro_vehicular(cobertura_seguro_vehicular,beneficios_seguro_vehicular,prima_seguro_vehicular) 
values('Proteccion contra accidentes viales','Rastreo Satelital en caso de perdidas','185');