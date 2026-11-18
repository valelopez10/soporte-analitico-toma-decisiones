CREATE DATABASE IF NOT EXISTS otc CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE otc;

CREATE TABLE stg_colaboradores (
  ⁠ id ⁠ VARCHAR(255) NULL,
  ⁠ nombre_completo ⁠ VARCHAR(255) NULL,
  ⁠ genero ⁠ VARCHAR(255) NULL,
  ⁠ fecha_nacimiento ⁠ VARCHAR(255) NULL,
  ⁠ telefono ⁠ VARCHAR(255) NULL,
  ⁠ correo_electronico ⁠ VARCHAR(255) NULL,
  ⁠ ciudad ⁠ VARCHAR(255) NULL,
  ⁠ domicilio ⁠ VARCHAR(255) NULL,
  ⁠ rfc ⁠ VARCHAR(255) NULL,
  ⁠ curp ⁠ VARCHAR(255) NULL,
  ⁠ nss ⁠ VARCHAR(255) NULL,
  ⁠ estatus ⁠ VARCHAR(255) NULL,
  ⁠ fecha_incorporacion ⁠ VARCHAR(255) NULL,
  ⁠ fecha_de_baja ⁠ VARCHAR(255) NULL,
  ⁠ tipo_nomina ⁠ VARCHAR(255) NULL,
  ⁠ departamento ⁠ VARCHAR(255) NULL,
  ⁠ puesto ⁠ VARCHAR(255) NULL,
  ⁠ sueldo_neto_imss ⁠ VARCHAR(255) NULL,
  ⁠ sueldo_asimilados_sindicato ⁠ VARCHAR(255) NULL,
  ⁠ sueldo_complementos ⁠ VARCHAR(255) NULL,
  ⁠ sueldo_neto_total ⁠ VARCHAR(255) NULL,
  ⁠ comision_nomina ⁠ VARCHAR(255) NULL,
  ⁠ impuestos_imss ⁠ VARCHAR(255) NULL,
  ⁠ sueldo_total_integrado ⁠ VARCHAR(255) NULL,
  ⁠ sgmm ⁠ VARCHAR(255) NULL,
  ⁠ seguro_vida ⁠ VARCHAR(255) NULL,
  ⁠ beneficiario ⁠ VARCHAR(255) NULL,
  ⁠ parentesco ⁠ VARCHAR(255) NULL,
  ⁠ porcentaje_beneficiario ⁠ VARCHAR(255) NULL,
  ⁠ alergias_condiciones ⁠ VARCHAR(255) NULL,
  ⁠ notas ⁠ VARCHAR(255) NULL,
  ⁠ doc_acta ⁠ VARCHAR(255) NULL,
  ⁠ doc_ine ⁠ VARCHAR(255) NULL,
  ⁠ doc_curp ⁠ VARCHAR(255) NULL,
  ⁠ doc_pasaporte ⁠ VARCHAR(255) NULL,
  ⁠ doc_visa ⁠ VARCHAR(255) NULL,
  ⁠ doc_const_situacion_fiscal ⁠ VARCHAR(255) NULL,
  ⁠ doc_nss ⁠ VARCHAR(255) NULL,
  ⁠ doc_comprobante_domicilio ⁠ VARCHAR(255) NULL,
  ⁠ doc_banco ⁠ VARCHAR(255) NULL,
  ⁠ doc_foto ⁠ VARCHAR(255) NULL,
  ⁠ doc_contrato ⁠ VARCHAR(255) NULL,
  ⁠ aviso_infonavit ⁠ VARCHAR(255) NULL,
  ⁠ aviso_manutencion ⁠ VARCHAR(255) NULL,
  ⁠ formato_rh ⁠ VARCHAR(255) NULL
);

CREATE TABLE stg_asignaciones (
  ⁠ id_colaborador ⁠ VARCHAR(255) NULL,
  ⁠ nombre_colaborador ⁠ VARCHAR(255) NULL,
  ⁠ nomina_rol_interno ⁠ VARCHAR(255) NULL,
  ⁠ estatus_colaborador ⁠ VARCHAR(255) NULL,
  ⁠ cliente ⁠ VARCHAR(255) NULL,
  ⁠ proyecto ⁠ VARCHAR(255) NULL,
  ⁠ rol_asignado ⁠ VARCHAR(255) NULL,
  ⁠ tipo_de_asignacion ⁠ VARCHAR(255) NULL,
  ⁠ estatus_asignacion ⁠ VARCHAR(255) NULL,
  ⁠ fecha_inicio ⁠ VARCHAR(255) NULL,
  ⁠ fecha_fin ⁠ VARCHAR(255) NULL
);

CREATE TABLE stg_clientes (
  ⁠ cod_cliente ⁠ VARCHAR(255) NULL,
  ⁠ cliente ⁠ VARCHAR(255) NULL,
  ⁠ industria ⁠ VARCHAR(255) NULL,
  ⁠ rfc ⁠ VARCHAR(255) NULL,
  ⁠ contacto_principal ⁠ VARCHAR(255) NULL,
  ⁠ email_contacto ⁠ VARCHAR(255) NULL,
  ⁠ estatus_cliente ⁠ VARCHAR(255) NULL,
  ⁠ proyecto ⁠ VARCHAR(255) NULL,
  ⁠ fecha_inicio ⁠ VARCHAR(255) NULL,
  ⁠ fecha_fin ⁠ VARCHAR(255) NULL,
  ⁠ pm_otc ⁠ VARCHAR(255) NULL,
  ⁠ pm_cliente ⁠ VARCHAR(255) NULL,
  ⁠ estatus_proyecto ⁠ VARCHAR(255) NULL
);

CREATE TABLE stg_departamentos (
  ⁠ objetivo ⁠ VARCHAR(1000) NULL,
  ⁠ codigo ⁠ VARCHAR(255) NULL,
  ⁠ nombre ⁠ VARCHAR(255) NULL,
  ⁠ centro_costos ⁠ VARCHAR(255) NULL,
  ⁠ uid ⁠ VARCHAR(255) NULL,
  ⁠ responsable ⁠ VARCHAR(255) NULL,
  ⁠ estatus ⁠ VARCHAR(255) NULL
);

CREATE TABLE stg_roles (
  ⁠ codigo ⁠ VARCHAR(255) NULL,
  ⁠ nombre_del_rol ⁠ VARCHAR(255) NULL,
  ⁠ nivel ⁠ VARCHAR(255) NULL,
  ⁠ departamento ⁠ VARCHAR(255) NULL,
  ⁠ descripcion ⁠ VARCHAR(255) NULL,
  ⁠ estatus ⁠ VARCHAR(255) NULL
);

CREATE TABLE stg_habilidades (
  ⁠ uid ⁠ VARCHAR(255) NULL,
  ⁠ descripcion ⁠ VARCHAR(255) NULL,
  ⁠ estatus ⁠ VARCHAR(255) NULL,
  ⁠ tecnologia ⁠ VARCHAR(255) NULL,
  ⁠ codigo ⁠ VARCHAR(255) NULL,
  ⁠ tipo ⁠ VARCHAR(255) NULL
);

CREATE TABLE stg_matriz (
  ⁠ id_colaborador ⁠ VARCHAR(100) NULL,
  ⁠ nombre_completo ⁠ VARCHAR(100) NULL,
  ⁠ correo_electronico ⁠ VARCHAR(100) NULL,
  ⁠ puesto_rol ⁠ VARCHAR(100) NULL,
  ⁠ departamento ⁠ VARCHAR(100) NULL,
  ⁠ estatus ⁠ VARCHAR(100) NULL,
  ⁠ h0002 ⁠ VARCHAR(15) NULL,
  ⁠ h0003 ⁠ VARCHAR(15) NULL,
  ⁠ h0004 ⁠ VARCHAR(15) NULL,
  ⁠ h0005 ⁠ VARCHAR(15) NULL,
  ⁠ h0006 ⁠ VARCHAR(15) NULL,
  ⁠ h0007 ⁠ VARCHAR(15) NULL,
  ⁠ h0008 ⁠ VARCHAR(15) NULL,
  ⁠ h0009 ⁠ VARCHAR(15) NULL,
  ⁠ h0010 ⁠ VARCHAR(15) NULL,
  ⁠ h0011 ⁠ VARCHAR(15) NULL,
  ⁠ h0012 ⁠ VARCHAR(15) NULL,
  ⁠ h0013 ⁠ VARCHAR(15) NULL,
  ⁠ h0014 ⁠ VARCHAR(15) NULL,
  ⁠ h0015 ⁠ VARCHAR(15) NULL,
  ⁠ h0016 ⁠ VARCHAR(15) NULL,
  ⁠ h0017 ⁠ VARCHAR(15) NULL,
  ⁠ h0018 ⁠ VARCHAR(15) NULL,
  ⁠ h0019 ⁠ VARCHAR(15) NULL,
  ⁠ h0020 ⁠ VARCHAR(15) NULL,
  ⁠ h0021 ⁠ VARCHAR(15) NULL,
  ⁠ h0022 ⁠ VARCHAR(15) NULL,
  ⁠ h0023 ⁠ VARCHAR(15) NULL,
  ⁠ h0024 ⁠ VARCHAR(15) NULL,
  ⁠ h0025 ⁠ VARCHAR(15) NULL,
  ⁠ h0026 ⁠ VARCHAR(15) NULL,
  ⁠ h0027 ⁠ VARCHAR(15) NULL,
  ⁠ h0028 ⁠ VARCHAR(15) NULL,
  ⁠ h0029 ⁠ VARCHAR(15) NULL,
  ⁠ h0030 ⁠ VARCHAR(15) NULL,
  ⁠ h0031 ⁠ VARCHAR(15) NULL,
  ⁠ h0032 ⁠ VARCHAR(15) NULL,
  ⁠ h0033 ⁠ VARCHAR(15) NULL,
  ⁠ h0034 ⁠ VARCHAR(15) NULL,
  ⁠ h0035 ⁠ VARCHAR(15) NULL,
  ⁠ h0036 ⁠ VARCHAR(15) NULL,
  ⁠ h0037 ⁠ VARCHAR(15) NULL,
  ⁠ h0038 ⁠ VARCHAR(15) NULL,
  ⁠ h0039 ⁠ VARCHAR(15) NULL,
  ⁠ h0040 ⁠ VARCHAR(15) NULL,
  ⁠ h0041 ⁠ VARCHAR(15) NULL,
  ⁠ h0042 ⁠ VARCHAR(15) NULL,
  ⁠ h0043 ⁠ VARCHAR(15) NULL,
  ⁠ h0044 ⁠ VARCHAR(15) NULL,
  ⁠ h0045 ⁠ VARCHAR(15) NULL,
  ⁠ h0046 ⁠ VARCHAR(15) NULL,
  ⁠ h0047 ⁠ VARCHAR(15) NULL,
  ⁠ h0048 ⁠ VARCHAR(15) NULL,
  ⁠ h0049 ⁠ VARCHAR(15) NULL,
  ⁠ h0050 ⁠ VARCHAR(15) NULL,
  ⁠ h0051 ⁠ VARCHAR(15) NULL,
  ⁠ h0052 ⁠ VARCHAR(15) NULL,
  ⁠ h0053 ⁠ VARCHAR(15) NULL,
  ⁠ h0054 ⁠ VARCHAR(15) NULL,
  ⁠ h0055 ⁠ VARCHAR(15) NULL,
  ⁠ h0056 ⁠ VARCHAR(15) NULL,
  ⁠ h0057 ⁠ VARCHAR(15) NULL,
  ⁠ h0058 ⁠ VARCHAR(15) NULL,
  ⁠ h0059 ⁠ VARCHAR(15) NULL,
  ⁠ h0060 ⁠ VARCHAR(15) NULL,
  ⁠ h0061 ⁠ VARCHAR(15) NULL,
  ⁠ h0062 ⁠ VARCHAR(15) NULL,
  ⁠ h0063 ⁠ VARCHAR(15) NULL,
  ⁠ h0064 ⁠ VARCHAR(15) NULL,
  ⁠ h0065 ⁠ VARCHAR(15) NULL,
  ⁠ h0066 ⁠ VARCHAR(15) NULL,
  ⁠ h0067 ⁠ VARCHAR(15) NULL,
  ⁠ s0001 ⁠ VARCHAR(15) NULL,
  ⁠ s0002 ⁠ VARCHAR(15) NULL,
  ⁠ h0068 ⁠ VARCHAR(15) NULL,
  ⁠ s0004 ⁠ VARCHAR(15) NULL,
  ⁠ s0005 ⁠ VARCHAR(15) NULL
);

CREATE TABLE stg_activos (
  ⁠ cod_activo ⁠ VARCHAR(255) NULL,
  ⁠ descripcion ⁠ VARCHAR(255) NULL,
  ⁠ marca ⁠ VARCHAR(255) NULL,
  ⁠ modelo ⁠ VARCHAR(255) NULL,
  ⁠ serie ⁠ VARCHAR(255) NULL,
  ⁠ tipo ⁠ VARCHAR(255) NULL,
  ⁠ estatus ⁠ VARCHAR(255) NULL,
  ⁠ costo ⁠ VARCHAR(255) NULL,
  ⁠ colaborador_asignado ⁠ VARCHAR(255) NULL,
  ⁠ fecha_inicio ⁠ VARCHAR(255) NULL,
  ⁠ fecha_fin ⁠ VARCHAR(255) NULL
);

SET GLOBAL local_infile = ON;
LOAD DATA LOCAL INFILE '/Users/danybenitez/Desktop/CSVs_staging_OTC/stg_colaboradores.csv'
INTO TABLE stg_colaboradores CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/danybenitez/Desktop/CSVs_staging_OTC/stg_asignaciones.csv'
INTO TABLE stg_asignaciones CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/danybenitez/Desktop/CSVs_staging_OTC/stg_clientes.csv'
INTO TABLE stg_clientes CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/danybenitez/Desktop/CSVs_staging_OTC/stg_departamentos.csv'
INTO TABLE stg_departamentos CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/danybenitez/Desktop/CSVs_staging_OTC/stg_roles.csv'
INTO TABLE stg_roles CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/danybenitez/Desktop/CSVs_staging_OTC/stg_habilidades.csv'
INTO TABLE stg_habilidades CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/danybenitez/Desktop/CSVs_staging_OTC/stg_matriz.csv'
INTO TABLE stg_matriz CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/danybenitez/Desktop/CSVs_staging_OTC/stg_activos.csv'
INTO TABLE stg_activos CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;

-- Revisión rápida: deben salir 107, 31, 12, 6, 55, 71, 54 y 123
SELECT 'stg_colaboradores' AS tabla, COUNT(*) AS filas FROM stg_colaboradores UNION ALL
SELECT 'stg_asignaciones', COUNT(*) FROM stg_asignaciones UNION ALL
SELECT 'stg_clientes',     COUNT(*) FROM stg_clientes     UNION ALL
SELECT 'stg_departamentos',COUNT(*) FROM stg_departamentos UNION ALL
SELECT 'stg_roles',        COUNT(*) FROM stg_roles        UNION ALL
SELECT 'stg_habilidades',  COUNT(*) FROM stg_habilidades  UNION ALL
SELECT 'stg_matriz',       COUNT(*) FROM stg_matriz       UNION ALL
SELECT 'stg_activos',      COUNT(*) FROM stg_activos;
