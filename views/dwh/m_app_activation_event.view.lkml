# The name of this view in Looker is "M App Activation Event"
view: m_app_activation_event {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `DWH.TBL_M_APP_ACTIVATION_EVENT`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.


  dimension: event_name {
    type: string
    sql: ${TABLE}.EVENT_NAME ;;
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

  dimension: device_id {
    type: string
    sql: ${TABLE}.DEVICE_ID ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.PLATFORM ;;
  }

  dimension: user_account_id {
    type: string
    sql: ${TABLE}.USER_ACCOUNT_ID ;;
  }

  dimension: experiment_variant {
    type: string
    sql: ${TABLE}.EXPERIMENT_VARIANT ;;
  }


}
