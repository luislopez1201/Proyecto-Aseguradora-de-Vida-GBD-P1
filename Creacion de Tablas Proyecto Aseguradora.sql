/*==============================================================*/
/* Table: ASEGURADO                                             */
/*==============================================================*/
create table ASEGURADO (
   ID_ASEGURADO         SERIAL               not null,
   ID_ASESOR            INT4                 null,
   NOMBRE_ASEGURADO     VARCHAR(40)          null,
   APELLIDO_ASEGURADO   VARCHAR(40)          null,
   CEDULA_ASEGURADO     VARCHAR(10)          null,
   DOMICILIO_ASEGURADO  VARCHAR(40)          null,
   CORREO_ASEGURADO     VARCHAR(50)          null,
   TELEFONO_ASEGURADO   VARCHAR(10)          null,
   constraint PK_ASEGURADO primary key (ID_ASEGURADO)
);

/*==============================================================*/
/* Index: ASEGURADO_PK                                          */
/*==============================================================*/
create unique index ASEGURADO_PK on ASEGURADO (
ID_ASEGURADO
);

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_11_FK on ASEGURADO (
ID_ASESOR
);

/*==============================================================*/
/* Table: ASESOR                                                */
/*==============================================================*/
create table ASESOR (
   ID_ASESOR            SERIAL               not null,
   NOMBRE_ASESOR        VARCHAR(40)          null,
   APELLIDO_ASESOR      VARCHAR(40)          null,
   CEDULA_ASESOR        VARCHAR(10)          null,
   ASESORIAS_REALIZADA  INT4                 null,
   constraint PK_ASESOR primary key (ID_ASESOR)
);

/*==============================================================*/
/* Index: ASESOR_PK                                             */
/*==============================================================*/
create unique index ASESOR_PK on ASESOR (
ID_ASESOR
);

/*==============================================================*/
/* Table: BENEFICIARIO                                          */
/*==============================================================*/
create table BENEFICIARIO (
   ID_BENEFICIARIO      SERIAL               not null,
   ID_ASEGURADO         INT4                 not null,
   NOMBRE_BENEFICIARIO  VARCHAR(40)          null,
   APELLIDO_BENEFICIARIO VARCHAR(40)          null,
   CEDULA_BENEFICIARIO  VARCHAR(10)          null,
   DOMICILIO_BENEFICIARIO VARCHAR(40)          null,
   TELEFONO_BENEFICIARIO VARCHAR(10)          null,
   RELACION_ASEGURADO   VARCHAR(100)         null,
   FECHA_DE_NACIMIENTO  DATE                 null,
   constraint PK_BENEFICIARIO primary key (ID_BENEFICIARIO)
);

/*==============================================================*/
/* Index: BENEFICIARIO_PK                                       */
/*==============================================================*/
create unique index BENEFICIARIO_PK on BENEFICIARIO (
ID_BENEFICIARIO
);

/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_12_FK on BENEFICIARIO (
ID_ASEGURADO
);

/*==============================================================*/
/* Table: CONTRATO                                              */
/*==============================================================*/
create table CONTRATO (
   ID_CONTRATO          SERIAL               not null,
   ID_ASEGURADO         INT4                 not null,
   ID_SEGURO            INT4                 not null,
   DESCRIPCION_CONTRATO VARCHAR(100)         null,
   ESTADO_CONTRATO      VARCHAR(100)         null,
   FECHAINICIO_CONTRATO DATE                 null,
   FECHAFINAL_CONTRATO  DATE                 null,
   PAGO_MENSUAL         INT4                 null,
   constraint PK_CONTRATO primary key (ID_CONTRATO)
);

/*==============================================================*/
/* Index: CONTRATO_PK                                           */
/*==============================================================*/
create unique index CONTRATO_PK on CONTRATO (
ID_CONTRATO
);

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_8_FK on CONTRATO (
ID_ASEGURADO
);

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_9_FK on CONTRATO (
ID_SEGURO
);

/*==============================================================*/
/* Table: SEGURO                                                */
/*==============================================================*/
create table SEGURO (
   ID_SEGURO            SERIAL               not null,
   ID_TIPOS_SEGUROS     INT4                 null,
   DETALLE_SEGURO       VARCHAR(100)         null,
   VENTAJAS_SEGURO      VARCHAR(100)         null,
   constraint PK_SEGURO primary key (ID_SEGURO)
);

/*==============================================================*/
/* Index: SEGURO_PK                                             */
/*==============================================================*/
create unique index SEGURO_PK on SEGURO (
ID_SEGURO
);

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_5_FK on SEGURO (
ID_TIPOS_SEGUROS
);

/*==============================================================*/
/* Table: SEGURO_DE_HOGAR                                       */
/*==============================================================*/
create table SEGURO_DE_HOGAR (
   ID_SEGURO_HOGAR      SERIAL               not null,
   COBERTURA_SEGURO_HOGAR VARCHAR(100)         null,
   BENEFICIOS_SEGURO_HOGAR VARCHAR(100)         null,
   PRIMA_SEGURO_HOGAR   INT4                 null,
   constraint PK_SEGURO_DE_HOGAR primary key (ID_SEGURO_HOGAR)
);

/*==============================================================*/
/* Index: SEGURO_DE_HOGAR_PK                                    */
/*==============================================================*/
create unique index SEGURO_DE_HOGAR_PK on SEGURO_DE_HOGAR (
ID_SEGURO_HOGAR
);

/*==============================================================*/
/* Table: SEGURO_DE_VIDA                                        */
/*==============================================================*/
create table SEGURO_DE_VIDA (
   ID_SEGURO_VIDA       SERIAL               not null,
   BENEFICIOS_SEGURO_VIDA VARCHAR(100)         null,
   COBERTURA_SEGURO_VIDA VARCHAR(100)         null,
   PRIMA_SEGURO_VIDA    INT4                 null,
   constraint PK_SEGURO_DE_VIDA primary key (ID_SEGURO_VIDA)
);

/*==============================================================*/
/* Index: SEGURO_DE_VIDA_PK                                     */
/*==============================================================*/
create unique index SEGURO_DE_VIDA_PK on SEGURO_DE_VIDA (
ID_SEGURO_VIDA
);

/*==============================================================*/
/* Table: SEGURO_VEHICULAR                                      */
/*==============================================================*/
create table SEGURO_VEHICULAR (
   ID_SEGURO_VEHICULAR  SERIAL               not null,
   COBERTURA_SEGURO_VEHICULAR VARCHAR(100)         null,
   BENEFICIOS_SEGURO_VEHICULAR VARCHAR(100)         null,
   PRIMA_SEGURO_VEHICULAR INT4                 null,
   constraint PK_SEGURO_VEHICULAR primary key (ID_SEGURO_VEHICULAR)
);

/*==============================================================*/
/* Index: SEGURO_VEHICULAR_PK                                   */
/*==============================================================*/
create unique index SEGURO_VEHICULAR_PK on SEGURO_VEHICULAR (
ID_SEGURO_VEHICULAR
);

/*==============================================================*/
/* Table: TIPO_DE_SEGURO                                        */
/*==============================================================*/
create table TIPO_DE_SEGURO (
   ID_TIPOS_SEGUROS     SERIAL               not null,
   ID_SEGURO_VIDA       INT4                 null,
   ID_SEGURO_HOGAR      INT4                 null,
   ID_SEGURO_VEHICULAR  INT4                 null,
   constraint PK_TIPO_DE_SEGURO primary key (ID_TIPOS_SEGUROS)
);

/*==============================================================*/
/* Index: TIPO_DE_SEGURO_PK                                     */
/*==============================================================*/
create unique index TIPO_DE_SEGURO_PK on TIPO_DE_SEGURO (
ID_TIPOS_SEGUROS
);

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_6_FK on TIPO_DE_SEGURO (
ID_SEGURO_VIDA
);

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_7_FK on TIPO_DE_SEGURO (
ID_SEGURO_HOGAR
);

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_10_FK on TIPO_DE_SEGURO (
ID_SEGURO_VEHICULAR
);

alter table ASEGURADO
   add constraint FK_ASEGURAD_RELATIONS_ASESOR foreign key (ID_ASESOR)
      references ASESOR (ID_ASESOR)
      on delete restrict on update restrict;

alter table BENEFICIARIO
   add constraint FK_BENEFICI_RELATIONS_ASEGURAD foreign key (ID_ASEGURADO)
      references ASEGURADO (ID_ASEGURADO)
      on delete restrict on update restrict;

alter table CONTRATO
   add constraint FK_CONTRATO_RELATIONS_ASEGURAD foreign key (ID_ASEGURADO)
      references ASEGURADO (ID_ASEGURADO)
      on delete restrict on update restrict;

alter table CONTRATO
   add constraint FK_CONTRATO_RELATIONS_SEGURO foreign key (ID_SEGURO)
      references SEGURO (ID_SEGURO)
      on delete restrict on update restrict;

alter table SEGURO
   add constraint FK_SEGURO_RELATIONS_TIPO_DE_ foreign key (ID_TIPOS_SEGUROS)
      references TIPO_DE_SEGURO (ID_TIPOS_SEGUROS)
      on delete restrict on update restrict;

alter table TIPO_DE_SEGURO
   add constraint FK_TIPO_DE__RELATIONS_SEGURO_V foreign key (ID_SEGURO_VEHICULAR)
      references SEGURO_VEHICULAR (ID_SEGURO_VEHICULAR)
      on delete restrict on update restrict;

alter table TIPO_DE_SEGURO
   add constraint FK_TIPO_DE__RELATIONS_SEGURO_D2 foreign key (ID_SEGURO_VIDA)
      references SEGURO_DE_VIDA (ID_SEGURO_VIDA)
      on delete restrict on update restrict;

alter table TIPO_DE_SEGURO
   add constraint FK_TIPO_DE__RELATIONS_SEGURO_D foreign key (ID_SEGURO_HOGAR)
      references SEGURO_DE_HOGAR (ID_SEGURO_HOGAR)
      on delete restrict on update restrict;