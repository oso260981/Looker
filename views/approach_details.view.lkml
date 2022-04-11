# The name of this view in Looker is "Approach Details"
view: approach_details {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `POC.APPROACH_DETAILS`
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

  dimension: customer_count {
    type: number
    sql: ${TABLE}.Customer_Count ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_customer_count {
    type: sum
    sql: ${customer_count} ;;
  }

  measure: average_customer_count {
    type: average
    sql: ${customer_count} ;;
  }

  measure: count {
    type: count
    drill_fields: [approach_name]
  }
}
