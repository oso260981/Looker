# The name of this view in Looker is "Room Details"
view: room_details {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `POC.ROOM_DETAILS`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Allotted Date" in Explore.

  dimension: allotted_date {
    type: string
    sql: ${TABLE}.Allotted_Date ;;
  }

  dimension: booking_cost {
    type: string
    sql: ${TABLE}.Booking_cost ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.Category_Id ;;
  }

  dimension: expenses {
    type: number
    sql: ${TABLE}.Expenses ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_price {
    type: sum
    sql: ${price} ;;
  }

  measure: average_price {
    type: average
    sql: ${price} ;;
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.Region_Id ;;
  }

  dimension: room_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.Room_Id ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.Status_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [room.room_id]
  }
}
