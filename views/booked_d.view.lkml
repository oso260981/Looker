# The name of this view in Looker is "Booked D"
view: booked_d {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `POC.BOOKED_D`
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
  # This dimension will be called "Check In Time" in Explore.

  dimension: check_in_time {
    type: string
    sql: ${TABLE}.CheckInTime ;;
  }

  dimension: check_out_time {
    type: string
    sql: ${TABLE}.CheckOutTime ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}.IsActive ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_is_active {
    type: sum
    sql: ${is_active} ;;
  }

  measure: average_is_active {
    type: average
    sql: ${is_active} ;;
  }

  dimension: lead_id {
    type: number
    sql: ${TABLE}.LeadId ;;
  }

  dimension: maintenance_charges {
    type: number
    sql: ${TABLE}.MaintenanceCharges ;;
  }

  dimension: room_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.RoomId ;;
  }

  dimension: transaction_charges {
    type: number
    sql: ${TABLE}.TransactionCharges ;;
  }

  measure: count {
    type: count
    drill_fields: [id, room.room_id]
  }
}
