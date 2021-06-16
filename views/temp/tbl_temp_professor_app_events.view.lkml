view: tbl_temp_professor_app_events {
  sql_table_name: `photomath-dwh-dev.TEMP.TBL_TEMP_PROFESSOR_APP_EVENTS`
    ;;

  dimension: app_info__firebase_app_id {
    type: string
    sql: ${TABLE}.app_info.firebase_app_id ;;
    group_label: "App Info"
    group_item_label: "Firebase App ID"
  }

  dimension: app_info__id {
    type: string
    sql: ${TABLE}.app_info.id ;;
    group_label: "App Info"
    group_item_label: "ID"
  }

  dimension: app_info__install_source {
    type: string
    sql: ${TABLE}.app_info.install_source ;;
    group_label: "App Info"
    group_item_label: "Install Source"
  }

  dimension: app_info__install_store {
    type: string
    sql: ${TABLE}.app_info.install_store ;;
    group_label: "App Info"
    group_item_label: "Install Store"
  }

  dimension: app_info__version {
    type: string
    sql: ${TABLE}.app_info.version ;;
    group_label: "App Info"
    group_item_label: "Version"
  }

  dimension: device__advertising_id {
    type: string
    sql: ${TABLE}.device.advertising_id ;;
    group_label: "Device"
    group_item_label: "Advertising ID"
  }

  dimension: device__browser {
    type: string
    sql: ${TABLE}.device.browser ;;
    group_label: "Device"
    group_item_label: "Browser"
  }

  dimension: device__browser_version {
    type: string
    sql: ${TABLE}.device.browser_version ;;
    group_label: "Device"
    group_item_label: "Browser Version"
  }

  dimension: device__category {
    type: string
    sql: ${TABLE}.device.category ;;
    group_label: "Device"
    group_item_label: "Category"
  }

  dimension: device__is_limited_ad_tracking {
    type: string
    sql: ${TABLE}.device.is_limited_ad_tracking ;;
    group_label: "Device"
    group_item_label: "Is Limited Ad Tracking"
  }

  dimension: device__language {
    type: string
    sql: ${TABLE}.device.language ;;
    group_label: "Device"
    group_item_label: "Language"
  }

  dimension: device__mobile_brand_name {
    type: string
    sql: ${TABLE}.device.mobile_brand_name ;;
    group_label: "Device"
    group_item_label: "Mobile Brand Name"
  }

  dimension: device__mobile_marketing_name {
    type: string
    sql: ${TABLE}.device.mobile_marketing_name ;;
    group_label: "Device"
    group_item_label: "Mobile Marketing Name"
  }

  dimension: device__mobile_model_name {
    type: string
    sql: ${TABLE}.device.mobile_model_name ;;
    group_label: "Device"
    group_item_label: "Mobile Model Name"
  }

  dimension: device__mobile_os_hardware_model {
    type: string
    sql: ${TABLE}.device.mobile_os_hardware_model ;;
    group_label: "Device"
    group_item_label: "Mobile OS Hardware Model"
  }

  dimension: device__operating_system {
    type: string
    sql: ${TABLE}.device.operating_system ;;
    group_label: "Device"
    group_item_label: "Operating System"
  }

  dimension: device__operating_system_version {
    type: string
    sql: ${TABLE}.device.operating_system_version ;;
    group_label: "Device"
    group_item_label: "Operating System Version"
  }

  dimension: device__time_zone_offset_seconds {
    type: number
    sql: ${TABLE}.device.time_zone_offset_seconds ;;
    group_label: "Device"
    group_item_label: "Time Zone Offset Seconds"
  }

  dimension: device__vendor_id {
    type: string
    sql: ${TABLE}.device.vendor_id ;;
    group_label: "Device"
    group_item_label: "Vendor ID"
  }

  dimension: device__web_info__browser {
    type: string
    sql: ${TABLE}.device.web_info.browser ;;
    group_label: "Device Web Info"
    group_item_label: "Browser"
  }

  dimension: device__web_info__browser_version {
    type: string
    sql: ${TABLE}.device.web_info.browser_version ;;
    group_label: "Device Web Info"
    group_item_label: "Browser Version"
  }

  dimension: device__web_info__hostname {
    type: string
    sql: ${TABLE}.device.web_info.hostname ;;
    group_label: "Device Web Info"
    group_item_label: "Hostname"
  }

  dimension: event_bundle_sequence_id {
    type: number
    sql: ${TABLE}.event_bundle_sequence_id ;;
  }

  dimension: event_date {
    type: string
    sql: ${TABLE}.event_date ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: event_params {
    hidden: yes
    sql: ${TABLE}.event_params ;;
  }

  dimension: event_previous_timestamp {
    type: number
    sql: ${TABLE}.event_previous_timestamp ;;
  }

  dimension: event_server_timestamp_offset {
    type: number
    sql: ${TABLE}.event_server_timestamp_offset ;;
  }

  dimension: event_timestamp {
    type: number
    sql: ${TABLE}.event_timestamp ;;
  }

  dimension: event_value_in_usd {
    type: number
    sql: ${TABLE}.event_value_in_usd ;;
  }

  dimension: geo__city {
    type: string
    sql: ${TABLE}.geo.city ;;
    group_label: "Geo"
    group_item_label: "City"
  }

  dimension: geo__continent {
    type: string
    sql: ${TABLE}.geo.continent ;;
    group_label: "Geo"
    group_item_label: "Continent"
  }

  dimension: geo__country {
    type: string
    sql: ${TABLE}.geo.country ;;
    group_label: "Geo"
    group_item_label: "Country"
  }

  dimension: geo__metro {
    type: string
    sql: ${TABLE}.geo.metro ;;
    group_label: "Geo"
    group_item_label: "Metro"
  }

  dimension: geo__region {
    type: string
    sql: ${TABLE}.geo.region ;;
    group_label: "Geo"
    group_item_label: "Region"
  }

  dimension: geo__sub_continent {
    type: string
    sql: ${TABLE}.geo.sub_continent ;;
    group_label: "Geo"
    group_item_label: "Sub Continent"
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: stream_id {
    type: string
    sql: ${TABLE}.stream_id ;;
  }

  dimension: traffic_source__medium {
    type: string
    sql: ${TABLE}.traffic_source.medium ;;
    group_label: "Traffic Source"
    group_item_label: "Medium"
  }

  dimension: traffic_source__name {
    type: string
    sql: ${TABLE}.traffic_source.name ;;
    group_label: "Traffic Source"
    group_item_label: "Name"
  }

  dimension: traffic_source__source {
    type: string
    sql: ${TABLE}.traffic_source.source ;;
    group_label: "Traffic Source"
    group_item_label: "Source"
  }

  dimension: user_first_touch_timestamp {
    type: number
    sql: ${TABLE}.user_first_touch_timestamp ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_ltv__currency {
    type: string
    sql: ${TABLE}.user_ltv.currency ;;
    group_label: "User Ltv"
    group_item_label: "Currency"
  }

  dimension: user_ltv__revenue {
    type: number
    sql: ${TABLE}.user_ltv.revenue ;;
    group_label: "User Ltv"
    group_item_label: "Revenue"
  }

  dimension: user_properties {
    hidden: yes
    sql: ${TABLE}.user_properties ;;
  }

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}.user_pseudo_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      event_name,
      traffic_source__name,
      device__mobile_model_name,
      device__mobile_brand_name,
      device__web_info__hostname,
      device__mobile_marketing_name
    ]
  }

#CUSTOM DIMENSION AND MEASURES
  dimension_group: event_date {
    type: time
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: TIMESTAMP(PARSE_DATE('%Y%m%d', ${TABLE}.event_date)) ;;
    group_label: "Event Date"
  }
}

view: tbl_temp_professor_app_events__event_params {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
    alias: [event_params]
  }

  dimension: value__double_value {
    type: number
    sql: ${TABLE}.value.double_value ;;
    group_label: "Value"
    group_item_label: "Double Value"
  }

  dimension: value__float_value {
    type: number
    sql: ${TABLE}.value.float_value ;;
    group_label: "Value"
    group_item_label: "Float Value"
  }

  dimension: value__int_value {
    type: number
    sql: ${TABLE}.value.int_value ;;
    group_label: "Value"
    group_item_label: "Int Value"
  }

  dimension: value__string_value {
    type: string
    sql: ${TABLE}.value.string_value ;;
    group_label: "Value"
    group_item_label: "String Value"
  }
}

view: tbl_temp_professor_app_events__user_properties {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
    alias: [user_properties]
  }

  dimension: value__double_value {
    type: number
    sql: ${TABLE}.value.double_value ;;
    group_label: "Value"
    group_item_label: "Double Value"
  }

  dimension: value__float_value {
    type: number
    sql: ${TABLE}.value.float_value ;;
    group_label: "Value"
    group_item_label: "Float Value"
  }

  dimension: value__int_value {
    type: number
    sql: ${TABLE}.value.int_value ;;
    group_label: "Value"
    group_item_label: "Int Value"
  }

  dimension: value__set_timestamp_micros {
    type: number
    sql: ${TABLE}.value.set_timestamp_micros ;;
    group_label: "Value"
    group_item_label: "Set Timestamp Micros"
  }

  dimension: value__string_value {
    type: string
    sql: ${TABLE}.value.string_value ;;
    group_label: "Value"
    group_item_label: "String Value"
  }

}
