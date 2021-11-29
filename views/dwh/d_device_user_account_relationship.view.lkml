# The name of this view in Looker is "D Device User Account Relationship"
view: d_device_user_account_relationship {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `DWH.TBL_D_DEVICE_USER_ACCOUNT_RELATIONSHIP`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.


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

  dimension_group: device_first_used_by_user_account_on_dt {
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
    sql: ${TABLE}.DEVICE_FIRST_USED_BY_USER_ACCOUNT_ON_DT ;;
  }

  dimension_group: device_last_used_by_user_account_on_dt {
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
    sql: ${TABLE}.DEVICE_LAST_USED_BY_USER_ACCOUNT_ON_DT ;;
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
