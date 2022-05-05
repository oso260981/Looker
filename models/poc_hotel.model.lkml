# Define the database connection to be used for this model.
connection: "hotel"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.
datagroup: poc_hotel_default_datagroup {
 # sql_trigger: SELECT MAX(id) FROM etl_log;;
 max_cache_age: "1 hour"
}


datagroup: revenue {

  max_cache_age: "1 hours"
  sql_trigger: select * from (
SELECT Region,sum(Price) Price FROM `eon-internal-bigquery.POC.VIEW_HOTEL_REVENIEW_LATEST`
where Region='United States'
group by Region)
where Price > 11548 ;;
  interval_trigger: "1 hours"
  label: "desired label"
  description: "description string"
}




persist_with: poc_hotel_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Poc Hotel"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: approach_details {}

explore: customer_details {
  join: customer {
    type: left_outer
    sql_on: ${customer_details.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }
}

explore: booked_d {
  join: room {
    type: left_outer
    sql_on: ${booked_d.room_id} = ${room.room_id} ;;
    relationship: many_to_one
  }
}

explore: category_d {}

explore: category_details {}

explore: customer {}

explore: capture_chanel {}

explore: booked {
  join: customer {
    type: left_outer
    sql_on: ${booked.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: room {
    type: left_outer
    sql_on: ${booked.room_id} = ${room.room_id} ;;
    relationship: many_to_one
  }
}

explore: leads {}

explore: hotel_region {}

explore: lead_d {}

explore: room {}

explore: room_category {}

explore: region_details {}

explore: room_d {}

explore: region_d {}

explore: room_details {
  join: room {
    type: left_outer
    sql_on: ${room_details.room_id} = ${room.room_id} ;;
    relationship: many_to_one
  }
}

explore: status {}

explore: status_d {}

explore: test_data {
  join: room {
    type: left_outer
    sql_on: ${test_data.room_id} = ${room.room_id} ;;
    relationship: many_to_one
  }
}

explore: view_hotel_reveniew_latest {



  #join: room {
  #  type: left_outer
  #  sql_on: ${view_hotel_reveniew_latest.room_id} = ${room.room_id} ;;
  #  relationship: many_to_one
  #}

  join: sql_runner_query {
    type: left_outer
    sql_on: ${view_hotel_reveniew_latest.region_id} = ${sql_runner_query.region_id} ;;
    relationship: many_to_one
  }
}

explore: view_hotel_reveniew {
 # join: room {
  #  type: left_outer
  #  sql_on: ${view_hotel_reveniew.room_id} = ${room.room_id} ;;
  #  relationship: many_to_one
  #}
  join: sql_runner_query {
    type: left_outer
    sql_on: ${view_hotel_reveniew.region_id} = ${sql_runner_query.region_id} ;;
    relationship: many_to_one
  }
}

explore: status_details {}
explore: sql_runner_query {}
