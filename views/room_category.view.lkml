# The name of this view in Looker is "Room Category"
view: room_category {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `POC.ROOM_CATEGORY`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Category ID" in Explore.

  dimension: category_id {
    type: number
    sql: ${TABLE}.Category_Id ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.Category_Name ;;
  }

  measure: count {
    type: count
    drill_fields: [category_name]
  }
}
