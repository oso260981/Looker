# The name of this view in Looker is "Room"
view: room {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `POC.ROOM`
    ;;
  drill_fields: [room_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: room_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Room_Id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Category ID" in Explore.

  dimension: category_id {
    type: number
    sql: ${TABLE}.Category_Id ;;
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

  dimension: status_id {
    type: number
    sql: ${TABLE}.Status_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      room_id,
      booked_d.count,
      booked.count,
      room_details.count,
      test_data.count,
      view_hotel_reveniew_latest.count,
      view_hotel_reveniew.count
    ]
  }
}
