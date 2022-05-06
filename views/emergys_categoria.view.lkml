view: emergys_categoria {
  derived_table: {
    sql: SELECT * FROM `eon-internal-bigquery.EMERGYS.Categoria`
      ;;
  }

  dimension: region_id {
    type: number
    sql: case when ${TABLE}.cadena_descripcion="WEST MEX" then 1
              when ${TABLE}.cadena_descripcion="FRANQUICIAS" then 2
              when ${TABLE}.cadena_descripcion="COSTITX" then 3




      else 4 end ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: canal_de_distribucion {
    type: string
    sql: ${TABLE}.canal_de_distribucion ;;
  }

  dimension: cliente_principal {
    type: string
    sql: ${TABLE}.cliente_principal ;;
  }

  dimension: cadena {
    type: number
    sql: ${TABLE}.cadena ;;
  }

  dimension: cadena_descripcion {
    type: string
    sql: ${TABLE}.cadena_descripcion ;;
  }

  dimension: nombre_de_cliente {
    type: string
    sql: ${TABLE}.nombre_de_cliente ;;
  }

  dimension: tienda {
    type: string
    sql: ${TABLE}.tienda ;;
  }

  dimension: venta {
    type: number
    sql: ${TABLE}.venta ;;
  }

  dimension: tickets {
    type: number
    sql: ${TABLE}.tickets ;;
  }

  dimension: valor_neto_ventas {
    type: number
    sql: ${TABLE}.valor_neto_ventas ;;
  }

  dimension: ranking {
    type: number
    sql: ${TABLE}.ranking ;;
  }

  set: detail {
    fields: [
      categoria,
      marca,
      canal_de_distribucion,
      cliente_principal,
      cadena,
      cadena_descripcion,
      nombre_de_cliente,
      tienda,
      venta,
      tickets,
      valor_neto_ventas,
      ranking
    ]
  }
}
