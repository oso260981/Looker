# The name of this view in Looker is "Cashflow Tabla Estandar"
view: cashflow_tabla_estandar {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `eon-internal-bigquery.sap_ventura.cashflow_tabla_estandar`
      #sql_table_name: `sap_ventura.cashflow_tabla_estandar`
        ;;
      # No primary key is defined for this view. In order to join this view in an Explore,
      # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Agrupacion" in Explore.

    dimension: agrupacion {
      type: string
      sql: ${TABLE}.AGRUPACION ;;
    }

    dimension: centro_de_costos {
      type: string
      sql: ${TABLE}.CENTRO_DE_COSTOS ;;
    }

    dimension: clasificacion_contable {
      type: string
      sql: ${TABLE}.CLASIFICACION_CONTABLE ;;
    }

    dimension: cuenta_contable {
      type: string
      sql: ${TABLE}.CUENTA_CONTABLE ;;
    }

    dimension: estatus {
      type: string
      sql: ${TABLE}.ESTATUS ;;
    }

    # Dates and timestamps can be represented in Looker using a dimension group of type: time.
    # Looker converts dates and timestamps to the specified timeframes within the dimension group.

    dimension_group: fecha {
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year
      ]
      convert_tz: no
      datatype: date
      sql: ${TABLE}.FECHA ;;
    }

    dimension: monto {
      type: number
      sql: ${TABLE}.MONTO ;;
    }

    # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
    # measures for this dimension, but you can also add measures of many different aggregates.
    # Click on the type parameter to see all the options in the Quick Help panel on the right.

    measure: total_monto {
      type: sum
      sql: ${monto} ;;
    }

    measure: average_monto {
      type: average
      sql: ${monto} ;;
    }

    dimension: tipo_transaccion {
      type: string
      sql: ${TABLE}.TIPO_TRANSACCION ;;
    }

    measure: count {
      type: count
      drill_fields: []
    }

    measure: suma {
      type: sum
      sql: case when ${TABLE}.TIPO_TRANSACCION = 'EGRESO' THEN (${TABLE}.MONTO * -1) else ${TABLE}.MONTO end ;;
      value_format_name: usd
      label: "monto"
    }

    dimension: anio {
      type: string
      sql: format(${TABLE}.FECHA,'YYYY') ;;
    }

    dimension: mes {
      type: string
      sql: format(${TABLE}.FECHA,'MMMM') ;;
    }

  }
