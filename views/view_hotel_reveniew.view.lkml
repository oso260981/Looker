# The name of this view in Looker is "View Hotel Reveniew"
view: view_hotel_reveniew {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `POC.VIEW_HOTEL_REVENIEW`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Booked ID" in Explore.

  dimension: booked_id {
    type: number
    sql: ${TABLE}.Booked_ID ;;
  }

  dimension: booked_is_active {
    type: number
    sql: ${TABLE}.BookedIsActive ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.CategoryID ;;
  }

  dimension: category_isactive {
    type: number
    sql: ${TABLE}.CategoryIsactive ;;
  }

  dimension: check_in_time {
    type: string
    sql: ${TABLE}.CheckInTime ;;
  }

  dimension: check_out_time {
    type: string
    sql: ${TABLE}.CheckOutTime ;;
  }

  dimension: lead {
    type: string
    sql: ${TABLE}.Lead ;;
  }

  dimension: lead_id {
    type: number
    sql: ${TABLE}.Lead_ID ;;
  }

  dimension: lead_isactive {
    type: number
    sql: ${TABLE}.LeadIsactive ;;
  }

  dimension: maintenance_charges {
    type: number
    sql: ${TABLE}.MaintenanceCharges ;;
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

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.RegionID ;;
  }

  dimension: region_isactive {
    type: number
    sql: ${TABLE}.RegionIsactive ;;
  }

  dimension: room_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.RoomID ;;
  }

  dimension: room_is_active {
    type: number
    sql: ${TABLE}.RoomIsActive ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.Status_ID ;;
  }

  dimension: status_isactive {
    type: number
    sql: ${TABLE}.StatusIsactive ;;
  }

  dimension: transaction_charges {
    type: number
    sql: ${TABLE}.TransactionCharges ;;
  }

  measure: count {
    type: count
    drill_fields: [room.room_id]
  }
}
