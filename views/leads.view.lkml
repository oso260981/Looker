# The name of this view in Looker is "Leads"
view: leads {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `POC.LEADS`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Approach ID" in Explore.

  dimension: approach_id {
    type: number
    sql: ${TABLE}.Approach_Id ;;
  }

  dimension: approach_name {
    type: string
    sql: ${TABLE}.Approach_Name ;;
  }

  measure: count {
    type: count
    drill_fields: [approach_name]
  }
}
