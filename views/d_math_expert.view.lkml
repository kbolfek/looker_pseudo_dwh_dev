view: d_math_expert {
  sql_table_name: `DWH.TBL_D_MATH_EXPERT`
    ;;

  dimension: billing_platform {
    type: string
    sql: ${TABLE}.BILLING_PLATFORM ;;
  }

  dimension: billing_status {
    type: string
    sql: ${TABLE}.BILLING_STATUS ;;
  }

  dimension: country_id {
    type: number
    sql: ${TABLE}.COUNTRY_ID ;;
  }

  dimension: created_auth_provider {
    type: string
    sql: ${TABLE}.CREATED_AUTH_PROVIDER ;;
  }

  dimension_group: email_verified_dt {
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
    sql: ${TABLE}.EMAIL_VERIFIED_DT ;;
  }

  dimension_group: first_contribution_dt {
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
    sql: ${TABLE}.FIRST_CONTRIBUTION_DT ;;
  }

  dimension: is_age_confirmed {
    type: yesno
    sql: ${TABLE}.IS_AGE_CONFIRMED ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.IS_DELETED ;;
  }

  dimension: is_enabled {
    type: yesno
    sql: ${TABLE}.IS_ENABLED ;;
  }

  dimension: is_internal {
    type: yesno
    sql: ${TABLE}.IS_INTERNAL ;;
  }

  dimension: is_locked {
    type: yesno
    sql: ${TABLE}.IS_LOCKED ;;
  }

  dimension: last_auth_provider {
    type: string
    sql: ${TABLE}.LAST_AUTH_PROVIDER ;;
  }

  dimension_group: last_login_dt {
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
    sql: ${TABLE}.LAST_LOGIN_DT ;;
  }

  dimension_group: locked_until_dt {
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
    sql: ${TABLE}.LOCKED_UNTIL_DT ;;
  }

  dimension: math_expert_id {
    type: number
    sql: ${TABLE}.MATH_EXPERT_ID ;;
  }

  dimension: referred_by_math_expert_id {
    type: number
    sql: ${TABLE}.REFERRED_BY_MATH_EXPERT_ID ;;
  }

  dimension_group: registered_from_dt {
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
    sql: ${TABLE}.REGISTERED_FROM_DT ;;
  }

  dimension_group: registered_until_dt {
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
    sql: ${TABLE}.REGISTERED_UNTIL_DT ;;
  }

  dimension_group: top_performer_dt {
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
    sql: ${TABLE}.TOP_PERFORMER_DT ;;
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.UTM_CAMPAIGN ;;
  }

  dimension: utm_content {
    type: string
    sql: ${TABLE}.UTM_CONTENT ;;
  }

  dimension: utm_medium {
    type: string
    sql: ${TABLE}.UTM_MEDIUM ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.UTM_SOURCE ;;
  }

  dimension: utm_term {
    type: string
    sql: ${TABLE}.UTM_TERM ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
