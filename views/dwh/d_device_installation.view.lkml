# The name of this view in Looker is "D Device Installation"
view: d_device_installation {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `DWH.TBL_D_DEVICE_INSTALLATION`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Device ID" in Explore.

  dimension: device_id {
    type: string
    sql: ${TABLE}.DEVICE_ID ;;
  }

  dimension: installation_id {
    type: string
    sql: ${TABLE}.INSTALLATION_ID ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.PLATFORM ;;
  }

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

  dimension_group: first_event_client_logged_date {
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
    sql: ${TABLE}.FIRST_EVENT_CLIENT_LOGGED_DATE ;;
  }

  dimension_group: first_event_server_logged_date {
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
    sql: ${TABLE}.FIRST_EVENT_SERVER_LOGGED_DATE ;;
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
