# The name of this view in Looker is "D Device"
view: d_device {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `DWH.TBL_D_DEVICE`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  dimension: device_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.DEVICE_ID ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.BRAND ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.MODEL ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.PLATFORM ;;
  }

  dimension: platform_version {
    type: string
    sql: ${TABLE}.PLATFORM_VERSION ;;
  }

  dimension: device_language {
    type: string
    sql: ${TABLE}.DEVICE_LANGUAGE ;;
  }

  dimension: app_language {
    type: string
    sql: ${TABLE}.APP_LANGUAGE ;;
  }

  dimension: country_id {
    type: number
    sql: ${TABLE}.COUNTRY_ID ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.COUNTRY_NAME ;;
  }

  dimension: gmt_offset_seconds {
    type: number
    sql: ${TABLE}.GMT_OFFSET_SECONDS ;;
  }


  dimension_group: first_used_dt {
    hidden:  yes
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
    sql: ${TABLE}.FIRST_USED_DT ;;
  }

  dimension_group: last_used_dt {
    hidden:  yes
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
    sql: ${TABLE}.LAST_USED_DT ;;
  }

  dimension_group: information_dt {
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
    sql: ${TABLE}.INFORMATION_DT ;;
  }

  dimension_group: dwh_insert_dt {
    hidden:  yes
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
    sql: ${TABLE}.DWH_INSERT_DT ;;
  }

  dimension_group: dwh_update_dt {
    hidden:  yes
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
    sql: ${TABLE}.DWH_UPDATE_DT ;;
  }





}
