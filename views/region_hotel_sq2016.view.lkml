view: region_hotel_sq2016 {
  derived_table: {
    sql: SELECT * FROM dbo.HotelRegion
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.Region_Id ;;
  }

  dimension: region_name {
    type: string
    sql: ${TABLE}.Region_Name ;;
  }

  dimension: total_rooms {
    type: number
    label: "Total Rooms"
    sql: ${TABLE}."Total Rooms" ;;
  }

  set: detail {
    fields: [region_id, region_name, total_rooms]
  }
}
