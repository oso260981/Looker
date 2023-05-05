view: telefono {
  derived_table: {
    sql: SELECT '5566532268'  Telefono FROM `eon-internal-bigquery.POC.VIEW_HOTEL_REVENIEW_LATEST` group by 1
      union all
      SELECT '5513021399'  Telefono FROM `eon-internal-bigquery.POC.VIEW_HOTEL_REVENIEW_LATEST`  group by 1
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.Telefono ;;
  }

  set: detail {
    fields: [telefono]
  }
}
