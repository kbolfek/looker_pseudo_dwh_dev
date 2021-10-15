# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
#explore: tbl_f_events_derivate_added_attributes {
#  hidden: yes
#
#  join: tbl_f_events_derivate_added_attributes__event_params {
#    view_label: "Tbl F Events Derivate Added Attributes: Event Params"
#    sql: LEFT JOIN UNNEST(${tbl_f_events_derivate_added_attributes.event_params}) as tbl_f_events_derivate_added_attributes__event_params ;;
#    relationship: one_to_many
#  }

#  join: tbl_f_events_derivate_added_attributes__user_properties {
#    view_label: "Tbl F Events Derivate Added Attributes: User Properties"
#    sql: LEFT JOIN UNNEST(${tbl_f_events_derivate_added_attributes.user_properties}) as tbl_f_events_derivate_added_attributes__user_properties ;;
#    relationship: one_to_many
#  }
#}

# The name of this view in Looker is "Tbl F Events Derivate Added Attributes"
view: f_events_derivate_added_attributes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `photomath-dwh-dev.DWH.TBL_F_EVENTS_DERIVATE_ADDED_ATTRIBUTES`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "App Language" in Explore.

  dimension: app_language {
    type: string
    sql: ${TABLE}.APP_LANGUAGE ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.APP_VERSION ;;
  }

  dimension: book_id {
    type: number
    sql: ${TABLE}.BOOK_ID ;;
  }

  dimension: content_id {
    type: string
    sql: ${TABLE}.CONTENT_ID ;;
  }

  dimension: country_id {
    type: number
    sql: ${TABLE}.COUNTRY_ID ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.COUNTRY_NAME ;;
  }

  dimension: device_id {
    type: string
    sql: ${TABLE}.DEVICE_ID ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: device_installation_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DEVICE_INSTALLATION_DT ;;
  }

  dimension: ecommerce_transaction_id {
    type: string
    sql: ${TABLE}.ECOMMERCE_TRANSACTION_ID ;;
  }

  dimension_group: event_client_logged {
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
    sql: ${TABLE}.EVENT_CLIENT_LOGGED_DATE ;;
  }

  dimension_group: event_client_logged_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.EVENT_CLIENT_LOGGED_DT ;;
  }

  dimension_group: event_client_logged_previous_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.EVENT_CLIENT_LOGGED_PREVIOUS_DT ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.EVENT_NAME ;;
  }


#  dimension: user_properties {
#    hidden: yes
#    sql: ${TABLE}.user_properties ;;
#  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

#  measure: count {
#    type: count
#    drill_fields: [detail*]
 # }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

#  measure: total_device__time_zone_offset_seconds {
#    type: sum
#    hidden: yes
#    sql: ${device__time_zone_offset_seconds} ;;
#  }

#  measure: average_device__time_zone_offset_seconds {
#    type: average
#    hidden: yes
#    sql: ${device__time_zone_offset_seconds} ;;
#  }

#  measure: total_event_year_week {
#    type: sum
#    hidden: yes
#    sql: ${event_year_week} ;;
#  }

#  measure: average_event_year_week {
#    type: average
#    hidden: yes
#    sql: ${event_year_week} ;;
#  }

#  measure: total_first_touch_year_week {
#    type: sum
#    hidden: yes
#    sql: ${first_touch_year_week} ;;
#  }

#  measure: average_first_touch_year_week {
 #   type: average
#    hidden: yes
#    sql: ${first_touch_year_week} ;;
#  }

#  measure: total_gmt_offset_seconds_qty {
#    type: sum
#    hidden: yes
#    sql: ${gmt_offset_seconds_qty} ;;
#  }

#  measure: average_gmt_offset_seconds_qty {
#    type: average
#    hidden: yes
#    sql: ${gmt_offset_seconds_qty} ;;
#  }

  # ----- Sets of fields for drilling ------
#  set: detail {
#    fields: [
#      country_name,
#      event_name,
#      device__mobile_model_name,
#      device__mobile_brand_name,
#      device__web_info__hostname,
#      device__mobile_marketing_name
#    ]
#  }
#}

# The name of this view in Looker is "Tbl F Events Derivate Added Attributes Event Params"
#view: tbl_f_events_derivate_added_attributes__event_params {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Key" in Explore.

#  dimension: key {
#    type: string
#    sql: ${TABLE}.key ;;
#  }

#  dimension: value__double_value {
#    type: number
#    sql: ${TABLE}.value.double_value ;;
#    group_label: "Value"
#    group_item_label: "Double Value"
#  }

#  dimension: value__float_value {
#    type: number
#    sql: ${TABLE}.value.float_value ;;
#    group_label: "Value"
#    group_item_label: "Float Value"
#  }

#  dimension: value__int_value {
#    type: number
#    sql: ${TABLE}.value.int_value ;;
#    group_label: "Value"
#    group_item_label: "Int Value"
#  }

#  dimension: value__string_value {
#    type: string
#    sql: ${TABLE}.value.string_value ;;
#    group_label: "Value"
#    group_item_label: "String Value"
#  }
#}

# The name of this view in Looker is "Tbl F Events Derivate Added Attributes User Properties"
#view: tbl_f_events_derivate_added_attributes__user_properties {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Key" in Explore.

#  dimension: key {
#    type: string
#    sql: ${TABLE}.key ;;
#  }

#  dimension: value__double_value {
#    type: number
#    sql: ${TABLE}.value.double_value ;;
 #   group_label: "Value"
#    group_item_label: "Double Value"
#  }

#  dimension: value__float_value {
#    type: number
#    sql: ${TABLE}.value.float_value ;;
#    group_label: "Value"
#    group_item_label: "Float Value"
#  }

#  dimension: value__int_value {
#    type: number
#    sql: ${TABLE}.value.int_value ;;
#    group_label: "Value"
#    group_item_label: "Int Value"
#  }

#  dimension: value__set_timestamp_micros {
#    type: number
#    sql: ${TABLE}.value.set_timestamp_micros ;;
#    group_label: "Value"
#    group_item_label: "Set Timestamp Micros"
#  }

#  dimension: value__string_value {
#    type: string
#    sql: ${TABLE}.value.string_value ;;
#    group_label: "Value"
#    group_item_label: "String Value"
#  }
}
