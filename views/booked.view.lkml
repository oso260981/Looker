# The name of this view in Looker is "Booked"
view: booked {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `POC.BOOKED`
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

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: check_in {
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
    sql: ${TABLE}.Check_In ;;
  }

  dimension_group: check_out {
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
    sql: ${TABLE}.Check_out ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Customer_Id ;;
  }

  dimension: maintainence_charges {
    type: string
    sql: ${TABLE}.MaintainenceCharges ;;
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

  dimension: transaction_charges {
    type: string
    sql: ${TABLE}.TransactionCharges ;;
  }

  measure: count {
    type: count
    drill_fields: [customer.customer_name, customer.customer_id, room.room_id]
  }
}
