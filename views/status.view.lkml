# The name of this view in Looker is "Status"
view: status {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `POC.STATUS`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Staus ID" in Explore.

  dimension: staus_id {
    type: number
    sql: ${TABLE}.Staus_Id ;;
  }

  dimension: staus_name {
    type: string
    sql: ${TABLE}.Staus_Name ;;
  }

  measure: count {
    type: count
    drill_fields: [staus_name]
  }
}
