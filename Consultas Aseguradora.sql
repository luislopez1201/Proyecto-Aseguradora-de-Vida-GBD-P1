/*==============================================================*/
/* Consulta 1.                                                  */
/*==============================================================*/
select asegurado.id_asegurado, asegurado.nombre_asegurado as nombre, asegurado.apellido_asegurado as apellido,
asesor.nombre_asesor as asesor, contrato.estado_contrato as estado, contrato.fechafinal_contrato as fecha_final
from asegurado
inner join contrato on contrato.id_contrato = asegurado.id_asegurado
inner join asesor on asesor.id_asesor = asegurado.id_asesor 
where contrato.estado_contrato = 'Inactivo'
order by asegurado.id_asegurado asc

/*==============================================================*/
/* Consulta 2.                                                  */
/*==============================================================*/

select beneficiario.id_beneficiario, beneficiario.nombre_beneficiario, 
beneficiario.apellido_beneficiario, beneficiario.fecha_de_nacimiento,
date_part('year',age(current_date, beneficiario.fecha_de_nacimiento)) as edad,
asegurado.nombre_asegurado, asegurado.apellido_asegurado
from beneficiario
inner join asegurado on asegurado.id_asegurado = beneficiario.id_asegurado
where date_part('year',age(current_date, beneficiario.fecha_de_nacimiento)) < 13
order by beneficiario.id_beneficiario asc

/*==============================================================*/
/* Consulta 3.                                                  */
/*==============================================================*/

select
extract (year from fechainicio_contrato) as año, asesor.id_asesor, asesor.nombre_asesor,
asegurado.nombre_asegurado,asegurado.apellido_asegurado
from asesor
inner join contrato on contrato.id_contrato = asesor.id_asesor
inner join asegurado on asegurado.id_asesor = contrato.id_contrato
where extract (year from fechainicio_contrato) = 2021
order by contrato.fechainicio_contrato asc

/*==============================================================*/
/* Consulta 4.                                                  */
/*==============================================================*/

select contrato.id_contrato, contrato.descripcion_contrato as Seguro_Contratado,
seguro_vehicular.cobertura_seguro_vehicular as Cobertura_Seguro,
seguro_vehicular.beneficios_seguro_vehicular as Beneficios_Seguro,
seguro_vehicular.prima_seguro_vehicular as Prima_Seguro
from contrato
inner join asegurado on asegurado.id_asegurado = contrato.id_contrato
inner join seguro on seguro.id_seguro = contrato.id_seguro
inner join tipo_de_seguro on tipo_de_seguro.id_tipos_seguros = seguro.id_seguro
inner join seguro_vehicular on seguro_vehicular.id_seguro_vehicular = tipo_de_seguro.id_tipos_seguros
where contrato.descripcion_contrato = 'Seguro Vehicular'
order by contrato.id_contrato asc