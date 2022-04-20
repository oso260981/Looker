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

  measure: average_adr {
    label: "ADR"
    type: average
    sql: ${adr};;
     value_format: "$#,##0"
    drill_fields: [detail*]
  }

  dimension: ari {
    type: number
    sql: ${TABLE}.ARI ;;
  }

  measure: average_ari {
    type: average
    sql: ${ari};;
    value_format:"$#.00;($#.00)"
    drill_fields: [detail*]
  }

  dimension: available_rooms_count {
    type: number
    sql: ${TABLE}.Available_Rooms_count ;;
  }

  dimension: booked_id {
    type: number
    sql: ${TABLE}.Booked_ID ;;
    drill_fields: [detail*]
  }

  measure: sum_booked_id {
    type: sum
    sql: ${booked_id} ;;
    drill_fields: [detail*]
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


  dimension_group: check_in_time {

    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
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

  measure: total_ebitda {
    label: "ebitda"
    type: sum
    sql: ${ebitda} ;;
    value_format: "$#,##0"
    drill_fields: [detail*]
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
    drill_fields: [detail*]
  }

  measure: average_last_year_price_amount {
    type: average
    sql: ${last_year_price_amount} ;;
    drill_fields: [detail*]
  }

  measure: sum_revenue {
   label: "Revenue"
    type: sum
    sql: ${revenue} ;;
    value_format: "$#,##0"
    drill_fields: [detail*]
  }

  measure: sum_last_year_revenue {
    type: sum
    sql: ${last_year_revenue} ;;
    value_format: "$#,##0"
    drill_fields: [detail*]
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


  measure: total_occ {
    label: "OCC"
    type: average
    sql: ${occ} ;;
    value_format: "0.00%"
    drill_fields: [detail*]
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


  dimension: usuario {
    type: string
    sql: case when ${TABLE}.Region="United States" then "israel"
              when ${TABLE}.Region="South Africa" then "Angeles"
              when ${TABLE}.Region="France" then "Angeles"
              when ${TABLE}.Region="Zimbabwe" then "israel"
              when ${TABLE}.Region="Australia" then "Angeles"
              when ${TABLE}.Region="Canada" then "israel"
              when ${TABLE}.Region="Nigeria" then "Angeles"
              when ${TABLE}.Region="Argentina" then "Angeles"
              when ${TABLE}.Region="Brazil" then "Angeles"
              when ${TABLE}.Region="Mexico" then "Angeles"
              when ${TABLE}.Region="Austria" then "israel"
              when ${TABLE}.Region="Finland" then "israel"



      else "0" end ;;
  }


  dimension: field_name_1 {
    type: string
    sql: case when ${TABLE}.Region="United States" then "37.09024"
              when ${TABLE}.Region="South Africa" then "-30.559482"
              when ${TABLE}.Region="France" then "46.227638"
              when ${TABLE}.Region="Zimbabwe" then "30.0000000"
              when ${TABLE}.Region="Australia" then "-25.274398"
              when ${TABLE}.Region="Canada" then "56.130366"
              when ${TABLE}.Region="Nigeria" then "9.081999"
              when ${TABLE}.Region="Argentina" then "-38.416097"
              when ${TABLE}.Region="Brazil" then "-14.235004"
              when ${TABLE}.Region="Mexico" then "23.634501"
              when ${TABLE}.Region="Austria" then "47.516231"
              when ${TABLE}.Region="Finland" then "61.92411"



    else "0" end ;;
  }

  dimension: field_name_2 {
    type: string
     sql: case when ${TABLE}.Region="United States" then "-95.712891"
               when ${TABLE}.Region="South Africa" then "22.937506"
               when ${TABLE}.Region="France" then "2.213749"
               when ${TABLE}.Region="Zimbabwe" then "-20.0000000"
               when ${TABLE}.Region="Australia" then "133.775136"
               when ${TABLE}.Region="Canada" then "-106.346771"
               when ${TABLE}.Region="Nigeria" then "8.675277"
               when ${TABLE}.Region="Argentina" then "-63.616672"
               when ${TABLE}.Region="Brazil" then "-51.92528"
               when ${TABLE}.Region="Mexico" then "-102.552784"
               when ${TABLE}.Region="Austria" then "14.550072"
               when ${TABLE}.Region="Finland" then "25.748151"


    else "0" end ;;
  }



  dimension: map {
    type: location
    sql_latitude:${field_name_1} ;;
    sql_longitude:${field_name_2} ;;
    drill_fields: [detail*]
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
    type: number
    sql: (case when ${TABLE}.RevPAR ="NULL" then 0 else CAST(${TABLE}.RevPAR as FLOAT64) end) ;;
  }

  measure: average_rev_par {
    label: "Rev par"
    type: average
    sql: ${rev_par};;
    value_format: "$#,##0"
    drill_fields: [detail*]
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.Revenue ;;
  }

  dimension: rgi {
    type: number
    sql: (case when ${TABLE}.RGI ="NULL" then 0 else CAST(${TABLE}.RGI as FLOAT64) end) ;;


  }

  measure: average_rgi {
    type: average
    sql: ${rgi};;
    value_format:"$#.00;($#.00)"

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

  measure: average_transaction_charges {
    type: average
    sql: ${transaction_charges} ;;
    value_format:"$#.00;($#.00)"
  }




  measure: count {
    type: count
    drill_fields: [room.room_id]
  }

  set: detail {
    fields: [
      category
      ,adr
,ari
,available_rooms_count
,booked_id
,booked_is_active
,category
,category_id
,category_isactive
,check_in_time
,check_out_time
,day_difference
,ebitda
,last_year_price_amount
,lead
,lead_id
,lead_isactive
,maintenance_charges
,no_of_hours
,occ
,price
,price_amount
,region
,region_isactive
,rev_par
,revenue
,rgi
,room_id
,room_is_active
,rooms_sold
,status
,total_rooms
,total_rooms_sold
,transaction_charges

    ]
  }





}
