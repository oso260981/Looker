view: tabla_derivada {
  derived_table: {
persist_for: "1 hour"
    sql: SELECT * FROM `eon-internal-bigquery.POC.VIEW_HOTEL_REVENIEW_LATEST`   ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.RegionID ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: region_isactive {
    type: number
    sql: ${TABLE}.RegionIsactive ;;
  }

  dimension: room_id {
    type: number
    sql: ${TABLE}.RoomID ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
  }

  dimension: room_is_active {
    type: number
    sql: ${TABLE}.RoomIsActive ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.CategoryID ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: category_isactive {
    type: number
    sql: ${TABLE}.CategoryIsactive ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.Status_ID ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: status_isactive {
    type: number
    sql: ${TABLE}.StatusIsactive ;;
  }

  dimension: booked_id {
    type: number
    sql: ${TABLE}.Booked_ID ;;
  }

  dimension: check_in_time {
    type: date
    datatype: date
    sql: ${TABLE}.CheckInTime ;;
  }

  dimension: check_out_time {
    type: date
    datatype: date
    sql: ${TABLE}.CheckOutTime ;;
  }

  dimension: transaction_charges {
    type: number
    sql: ${TABLE}.TransactionCharges ;;
  }

  dimension: maintenance_charges {
    type: number
    sql: ${TABLE}.MaintenanceCharges ;;
  }

  dimension: booked_is_active {
    type: number
    sql: ${TABLE}.BookedIsActive ;;
  }

  dimension: lead_id {
    type: number
    sql: ${TABLE}.Lead_ID ;;
  }

  dimension: lead {
    type: string
    sql: ${TABLE}.Lead ;;
  }

  dimension: lead_isactive {
    type: number
    sql: ${TABLE}.LeadIsactive ;;
  }

  dimension: available_rooms_count {
    type: number
    sql: ${TABLE}.Available_Rooms_count ;;
  }

  dimension: price_amount {
    type: number
    sql: ${TABLE}.PriceAmount ;;
  }

  dimension: rooms_sold {
    type: number
    sql: ${TABLE}.Rooms_Sold ;;
  }

  dimension: day_difference {
    type: number
    sql: ${TABLE}.DayDifference ;;
  }

  dimension: no_of_hours {
    type: number
    sql: ${TABLE}.NoOfHours ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.Revenue ;;
  }

  dimension: rev_par {
    type: string
    sql: ${TABLE}.RevPAR ;;
  }

  dimension: total_rooms_sold {
    type: number
    sql: ${TABLE}.Total_Rooms_Sold ;;
  }

  dimension: occ {
    type: number
    sql: ${TABLE}.OCC ;;
  }

  dimension: rgi {
    type: string
    sql: ${TABLE}.RGI ;;
  }

  dimension: last_year_price_amount {
    type: number
    sql: ${TABLE}.LastYearPriceAmount ;;
  }

  dimension: total_rooms {
    type: number
    sql: ${TABLE}.Total_Rooms ;;
  }

  dimension: adr {
    type: number
    sql: ${TABLE}.ADR ;;
  }

  dimension: ari {
    type: number
    sql: ${TABLE}.ARI ;;
  }

  dimension: ebitda {
    type: number
    sql: ${TABLE}.EBITDA ;;
  }

  dimension: last_year_revenue {
    type: number
    sql: ${TABLE}.Last_Year_Revenue ;;
  }

  set: detail {
    fields: [
      region_id,
      region,
      region_isactive,
      room_id,
      price,
      room_is_active,
      category_id,
      category,
      category_isactive,
      status_id,
      status,
      status_isactive,
      booked_id,
      check_in_time,
      check_out_time,
      transaction_charges,
      maintenance_charges,
      booked_is_active,
      lead_id,
      lead,
      lead_isactive,
      available_rooms_count,
      price_amount,
      rooms_sold,
      day_difference,
      no_of_hours,
      revenue,
      rev_par,
      total_rooms_sold,
      occ,
      rgi,
      last_year_price_amount,
      total_rooms,
      adr,
      ari,
      ebitda,
      last_year_revenue
    ]
  }
}
