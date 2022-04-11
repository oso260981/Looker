# The name of this view in Looker is "View Hotel Reveniew Latest"
view: view_hotel_reveniew_latest {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `POC.VIEW_HOTEL_REVENIEW_LATEST`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Adr" in Explore.

  dimension: adr {
    type: number
    sql: ${TABLE}.ADR ;;
  }

  dimension: ari {
    type: number
    sql: ${TABLE}.ARI ;;
  }

  dimension: available_rooms_count {
    type: number
    sql: ${TABLE}.Available_Rooms_count ;;
  }

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

  dimension: day_difference {
    type: number
    sql: ${TABLE}.DayDifference ;;
  }

  dimension: ebitda {
    type: number
    sql: ${TABLE}.EBITDA ;;
  }

  dimension: last_year_price_amount {
    type: number
    sql: ${TABLE}.LastYearPriceAmount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_last_year_price_amount {
    type: sum
    sql: ${last_year_price_amount} ;;
  }

  measure: average_last_year_price_amount {
    type: average
    sql: ${last_year_price_amount} ;;
  }

  dimension: last_year_revenue {
    type: number
    sql: ${TABLE}.Last_Year_Revenue ;;
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

  dimension: no_of_hours {
    type: number
    sql: ${TABLE}.NoOfHours ;;
  }

  dimension: occ {
    type: number
    sql: ${TABLE}.OCC ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
  }

  dimension: price_amount {
    type: number
    sql: ${TABLE}.PriceAmount ;;
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

  dimension: rev_par {
    type: string
    sql: ${TABLE}.RevPAR ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.Revenue ;;
  }

  dimension: rgi {
    type: string
    sql: ${TABLE}.RGI ;;
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

  dimension: rooms_sold {
    type: number
    sql: ${TABLE}.Rooms_Sold ;;
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

  dimension: total_rooms {
    type: number
    sql: ${TABLE}.Total_Rooms ;;
  }

  dimension: total_rooms_sold {
    type: number
    sql: ${TABLE}.Total_Rooms_Sold ;;
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
