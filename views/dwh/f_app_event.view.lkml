view: f_app_event {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `DWH.TBL_F_APP_EVENT`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  dimension: event_name {
    type: string
    description: "The name of the event."
    sql: ${TABLE}.EVENT_NAME ;;
  }

  dimension_group: event_server_logged {
    type: time
    description: "Date of server logging the event."
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
    sql: ${TABLE}.EVENT_SERVER_LOGGED_DATE ;;
  }

  dimension_group: event_client_logged_dt {
    type: time
    description: "Timestamp of when the event happened on user's device, in UTC."
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
    description: "Timestamp of when the event previously happened on user's device, in UTC."
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

  dimension: event_year_month {
    type: number
    description: "Year and month of the event happening on client side."
    sql: ${TABLE}.EVENT_YEAR_MONTH ;;
  }

  dimension: event_year_week {
    type: number
    description: "Year and week of the event happening on client side."
    sql: ${TABLE}.EVENT_YEAR_WEEK ;;
  }

  dimension_group: device_installation_dt {
    type: time
    description: "Timestamp at which the app was first opened after installation."
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

  dimension: device_installation_year_week {
    type: number
    description: "Year and week of when the DEVICE_ID first touched the app."
    sql: ${TABLE}.DEVICE_INSTALLATION_YEAR_WEEK ;;
  }

  dimension: device_id {
    type: string
    description: "Foreign key to table D_DEVICE. ID of the device using the app."
    sql: ${TABLE}.DEVICE_ID ;;
  }

  dimension: platform {
    type: string
    description: "Platform on which the app was built (IOS/ANDROID)."
    sql: ${TABLE}.PLATFORM ;;
  }

  dimension: user_account_id {
    type: string
    description: "Foreign key to table D_USER_ACCOUNT. User-created account ID."
    sql: ${TABLE}.USER_ACCOUNT_ID ;;
  }

  dimension: installation_id {
    type: string
    description: "ID of the app (re)installation."
    sql: ${TABLE}.INSTALLATION_ID ;;
  }

  dimension: app_version {
    type: string
    description: "Version of the app."
    sql: ${TABLE}.APP_VERSION ;;
  }

  dimension: provider {
    type: string
    sql: ${TABLE}.PROVIDER ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.SESSION_ID ;;
  }

  dimension: app_language {
    type: string
    description: "Language set for the app."
    sql: ${TABLE}.APP_LANGUAGE ;;
  }

  dimension: device_language {
    type: string
    description: "Language set on the DEVICE_"
    sql: ${TABLE}.DEVICE_LANGUAGE ;;
  }

  dimension: country_id {
    type: number
    description: "Foreign key to table D_COUNTRY. ID of he country from which events were reported based on IP address."
    sql: ${TABLE}.COUNTRY_ID ;;
  }

  dimension: country_name {
    type: string
    description: "Name of he country from which events were reported based on IP address."
    sql: ${TABLE}.COUNTRY_NAME ;;
  }

  dimension: subscription_id {
    type: string
    description: "ID of the subscription to the app."
    sql: ${TABLE}.SUBSCRIPTION_ID ;;
  }

  dimension: product_id {
    type: string
    description: "Foreign key to table D_PRODUCT. ID of the product used within the subscription."
    sql: ${TABLE}.PRODUCT_ID ;;
  }

  dimension: book_id {
    type: number
    description: "Foreign key to table D_BOOK. ID of the book consumed."
    sql: ${TABLE}.BOOK_ID ;;
  }

  dimension: isbn {
    type: string
    description: "ISBN of the book consumed."
    sql: ${TABLE}.ISBN ;;
  }

  dimension: math_task_id {
    type: number
    description: "Foreign key to table D_MATH_TASK. ID of the math task consumed"
    sql: ${TABLE}.MATH_TASK_ID ;;
  }

  dimension: content_id {
    type: string
    sql: ${TABLE}.CONTENT_ID ;;
  }

  dimension: ecommerce_transaction_id {
    type: string
    description: "The transaction ID of the ecommerce transaction."
    sql: ${TABLE}.ECOMMERCE_TRANSACTION_ID ;;
  }

  dimension: gmt_offset_seconds {
    type: number
    description: "Offset of the event timestamp to server."
    sql: ${TABLE}.GMT_OFFSET_SECONDS ;;
  }

  dimension: paywall_source {
    type: string
    description: "Source from which paywall was hit."
    sql: ${TABLE}.PAYWALL_SOURCE ;;
  }

  dimension: experiment_variant {
    type: string
    description: "Used for A/B tests when a user is activated in an experiment, they are added to control, variant, etc. Control means they weren't shown the change. Variant means they were shown it. For example, for Ask Parent to Pay. Control, they don't see the CTA. Variant they do"
    sql: ${TABLE}.EXPERIMENT_VARIANT ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: event_params {
    hidden: yes
    sql: ${TABLE}.event_params ;;
  }

  dimension: user_properties {
    hidden: yes
    sql: ${TABLE}.user_properties ;;
  }

  dimension: device__advertising_id {
    hidden: yes
    type: string
    sql: ${TABLE}.device.advertising_id ;;
    group_label: "Device"
    group_item_label: "Advertising ID"
  }

  dimension: device__browser {
    hidden: yes
    type: string
    sql: ${TABLE}.device.browser ;;
    group_label: "Device"
    group_item_label: "Browser"
  }

  dimension: device__browser_version {
    hidden: yes
    type: string
    sql: ${TABLE}.device.browser_version ;;
    group_label: "Device"
    group_item_label: "Browser Version"
  }

  dimension: device__category {
    hidden: yes
    type: string
    sql: ${TABLE}.device.category ;;
    group_label: "Device"
    group_item_label: "Category"
  }

  dimension: device__is_limited_ad_tracking {
    hidden: yes
    type: string
    sql: ${TABLE}.device.is_limited_ad_tracking ;;
    group_label: "Device"
    group_item_label: "Is Limited Ad Tracking"
  }

  dimension: device__language {
    hidden: yes
    type: string
    sql: ${TABLE}.device.language ;;
    group_label: "Device"
    group_item_label: "Language"
  }

  dimension: device__mobile_brand_name {
    hidden: yes
    type: string
    sql: ${TABLE}.device.mobile_brand_name ;;
    group_label: "Device"
    group_item_label: "Mobile Brand Name"
  }

  dimension: device__mobile_marketing_name {
    hidden: yes
    type: string
    sql: ${TABLE}.device.mobile_marketing_name ;;
    group_label: "Device"
    group_item_label: "Mobile Marketing Name"
  }

  dimension: device__mobile_model_name {
    hidden: yes
    type: string
    sql: ${TABLE}.device.mobile_model_name ;;
    group_label: "Device"
    group_item_label: "Mobile Model Name"
  }

  dimension: device__mobile_os_hardware_model {
    hidden: yes
    type: string
    sql: ${TABLE}.device.mobile_os_hardware_model ;;
    group_label: "Device"
    group_item_label: "Mobile OS Hardware Model"
  }

  dimension: device__operating_system {
    hidden: yes
    type: string
    sql: ${TABLE}.device.operating_system ;;
    group_label: "Device"
    group_item_label: "Operating System"
  }

  dimension: device__operating_system_version {
    hidden: yes
    type: string
    sql: ${TABLE}.device.operating_system_version ;;
    group_label: "Device"
    group_item_label: "Operating System Version"
  }

  dimension: device__time_zone_offset_seconds {
    hidden: yes
    type: number
    sql: ${TABLE}.device.time_zone_offset_seconds ;;
    group_label: "Device"
    group_item_label: "Time Zone Offset Seconds"
  }

  dimension: device__vendor_id {
    hidden: yes
    type: string
    sql: ${TABLE}.device.vendor_id ;;
    group_label: "Device"
    group_item_label: "Vendor ID"
  }

  dimension: device__web_info__browser {
    hidden: yes
    type: string
    sql: ${TABLE}.device.web_info.browser ;;
    group_label: "Device Web Info"
    group_item_label: "Browser"
  }

  dimension: device__web_info__browser_version {
    hidden: yes
    type: string
    sql: ${TABLE}.device.web_info.browser_version ;;
    group_label: "Device Web Info"
    group_item_label: "Browser Version"
  }

  dimension: device__web_info__hostname {
    hidden: yes
    type: string
    sql: ${TABLE}.device.web_info.hostname ;;
    group_label: "Device Web Info"
    group_item_label: "Hostname"
  }

}

# The name of this view in Looker is "F App Event Event Params"
view: f_app_event__event_params {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.


  dimension: key {
    type: string
    sql: key ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: tbl_f_app_event__event_params {
    type: string
    description: "A REPEATED RECORD of the parameters associated with this event."
    hidden: yes
    sql: f_app_event__event_params ;;
  }

  dimension: value__string_value {
    type: string
    sql: value.string_value ;;
    group_label: "Value"
    group_item_label: "String Value"
  }

  dimension: value__int_value {
    type: number
    sql: value.int_value ;;
    group_label: "Value"
    group_item_label: "Int Value"
  }

  dimension: value__double_value {
    type: number
    sql: value.double_value ;;
    group_label: "Value"
    group_item_label: "Double Value"
  }

  dimension: value__float_value {
    type: number
    sql: value.float_value ;;
    group_label: "Value"
    group_item_label: "Float Value"
  }


}

# The name of this view in Looker is "F App Event User Properties"
view: f_app_event__user_properties {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.


  dimension: key {
    type: string
    sql: key ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: f_app_event__user_properties {
    type: string
    description: "A REPEATED RECORD of user properties set with the setUserProperty API. It´s a unique ID by app install. So as long as a user uses the same app instance (Installation) without reinstalling it, the INSTALLATION_ID stays the same"
    hidden: yes
    sql: tbl_f_app_event__user_properties ;;
  }

  dimension: value__string_value {
    type: string
    sql: value.string_value ;;
    group_label: "Value"
    group_item_label: "String Value"
  }

  dimension: value__int_value {
    type: number
    sql: value.int_value ;;
    group_label: "Value"
    group_item_label: "Int Value"
  }

  dimension: value__double_value {
    type: number
    sql: value.double_value ;;
    group_label: "Value"
    group_item_label: "Double Value"
  }

  dimension: value__float_value {
    type: number
    sql: value.float_value ;;
    group_label: "Value"
    group_item_label: "Float Value"
  }

  dimension: value__set_timestamp_micros {
    type: number
    sql: value.set_timestamp_micros ;;
    group_label: "Value"
    group_item_label: "Set Timestamp Micros"
  }


}
