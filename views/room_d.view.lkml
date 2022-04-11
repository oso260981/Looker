# The name of this view in Looker is "Room D"
view: room_d {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `POC.ROOM_D`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Category ID" in Explore.

  dimension: category_id {
    type: number
    sql: ${TABLE}.CategoryId ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}.IsActive ;;
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
    sql: ${TABLE}.RegionId ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
