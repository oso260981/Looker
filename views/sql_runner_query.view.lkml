view: sql_runner_query {
  derived_table: {
    sql: SELECT * FROM `eon-internal-bigquery.sap_ventura.cashflow_tabla_estandar`
      ;;
  }



  dimension: region_id {
    type: number
    sql: case when ${TABLE}.CUENTA_CONTABLE="ENERGIA ELECTRICA" then 1
              when ${TABLE}.CUENTA_CONTABLE="CUOTAS IMSS" then 2
              when ${TABLE}.CUENTA_CONTABLE="HONORARIOS PERSONAS MORALES" then 3




      else 4 end ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: tipo_transaccion {
    type: string
    sql: ${TABLE}.TIPO_TRANSACCION ;;
  }

  dimension: clasificacion_contable {
    type: string
    sql: ${TABLE}.CLASIFICACION_CONTABLE ;;
  }

  dimension: cuenta_contable {
    type: string
    sql: ${TABLE}.CUENTA_CONTABLE ;;
  }

  dimension: centro_de_costos {
    type: string
    sql: ${TABLE}.CENTRO_DE_COSTOS ;;
  }

  dimension: fecha {
    type: date
    datatype: date
    sql: ${TABLE}.FECHA ;;
  }

  dimension: monto {
    type: number
    sql: ${TABLE}.MONTO ;;
  }

  dimension: estatus {
    type: string
    sql: ${TABLE}.ESTATUS ;;
  }

  dimension: agrupacion {
    type: string
    sql: ${TABLE}.AGRUPACION ;;
  }

  set: detail {
    fields: [
      tipo_transaccion,
      clasificacion_contable,
      cuenta_contable,
      centro_de_costos,
      fecha,
      monto,
      estatus,
      agrupacion
    ]
  }
}
