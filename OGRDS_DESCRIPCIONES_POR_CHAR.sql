--CARACTER�STICAS OGRDS, DE R
SELECT DISTINCT
N.F_NCV_NAN_KEY                                 AS NANKEY,
N.F_NCV_LAST_CHANGED_DATE                       AS LAST_CHANGED
,MAX(DECODE(N.NC_CHARID,47667,AC_CHARVALUETAG)) AS MODULE
--,MAX(DECODE(N.NC_CHARID,26577,AC_CHARVALUETAG)) AS FRESC_AMB_REFRI
,MAX(DECODE(N.NC_CHARID,2132,AC_CHARVALUETAG))  AS BRAND_OWNER
,MAX(DECODE(N.NC_CHARID,23931,AC_CHARVALUETAG)) AS HOLG
,MAX(DECODE(N.NC_CHARID,23969,AC_CHARVALUETAG)) AS MARCA
,MAX(DECODE(N.NC_CHARID,24120,AC_CHARVALUETAG)) AS SUBMARCA
,MAX(DECODE(N.NC_CHARID,24100,AC_CHARVALUETAG)) AS SEGMENTO
,MAX(DECODE(N.NC_CHARID,24101,AC_CHARVALUETAG)) AS SEGMENTO_1
,MAX(DECODE(N.NC_CHARID,24196,AC_CHARVALUETAG)) AS VARIEDAD
,MAX(DECODE(N.NC_CHARID,24197,AC_CHARVALUETAG)) AS VARIEDAD_1
--,MAX(DECODE(N.NC_CHARID,24059,AC_CHARVALUETAG)) AS TIP_MARCA
,MAX(DECODE(N.NC_CHARID,24158,AC_CHARVALUETAG)) AS TIPO
,MAX(DECODE(N.NC_CHARID,24159,AC_CHARVALUETAG)) AS TIPO_1
,MAX(DECODE(N.NC_CHARID,23867,AC_CHARVALUETAG)) AS ENV_TIPO_ENVASE
,MAX(DECODE(N.NC_CHARID,23868,AC_CHARVALUETAG)) AS ENV1_JERARQUICA
,MAX(DECODE(N.NC_CHARID,24035,AC_CHARVALUETAG)) AS PESO
,MAX(DECODE(N.NC_CHARID,24010,AC_CHARVALUETAG)) AS NUM_UND
--,MAX(DECODE(N.NC_CHARID,24066,AC_CHARVALUETAG)) AS PROMOCION
--,MAX(DECODE(N.NC_CHARID,36618,AC_CHARVALUETAG)) AS GLOBALWV_AC
--,MAX(DECODE(N.NC_CHARID,36619,AC_CHARVALUETAG)) AS GLOBALWV_BA
--,MAX(DECODE(N.NC_CHARID,6023137,AC_CHARVALUETAG)) AS DRAINED_WE
,MAX(DECODE(N.NC_CHARID,23726,AC_CHARVALUETAG)) AS LOCAL_PC
--,MAX(DECODE(N.NC_CHARID,23720,AC_CHARVALUETAG)) AS PC_ITEM
             
FROM    VLDIMDB_ES.NANCHARVALS  N,
        VLDIMDB_ES.CHARS        M,
        VLDIMDB_ES.CHARVALS     L
        --,VLDRAWDATA_eS.RAWDATA   R
                           
WHERE       N.NC_CHARID         IN  (47667,2132,24158,24101, 26577,23726,24159, 23931, 24010,23969, 24059, 24120, 24100, 24196, 24197, 23867, 23868, 24035, 24035, 36618, 36619, 6023137,23720)
AND         M.NC_CHARID         =   N.NC_CHARID
AND         L.NC_CHARID         =   N.NC_CHARID
AND         L.NC_CHARVALUEID    =   N.NC_CHARVALUEID
--AND         N.F_NCV_NAN_KEY     =   R.F_NAN_KEY
AND         N.F_NCV_NAN_KEY     IN  ('65021565')
GROUP BY    N.F_NCV_NAN_KEY, N.F_NCV_LAST_CHANGED_DATE;