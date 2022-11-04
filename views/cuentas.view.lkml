view: cuentas {
  derived_table: {
    sql: SELECT * FROM `eon-internal-bigquery.sap_ventura.cashflow_tabla_estandar`
      ;;
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
