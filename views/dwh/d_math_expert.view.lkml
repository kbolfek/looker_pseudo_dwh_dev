view: d_math_expert {
  sql_table_name: `DWH.TBL_D_MATH_EXPERT`
    ;;

  dimension: billing_platform {
    type: string
    description: "Billing platform"
    sql: ${TABLE}.BILLING_PLATFORM ;;
  }

  dimension: billing_status {
    type: string
    description: "Math expert's billing status - suspended, active, notEligible, onHold"
    sql: ${TABLE}.BILLING_STATUS ;;
  }

  dimension: country_id {
    type: number
    description: "Foreign key to table D_COUNTRY"
    sql: ${TABLE}.COUNTRY_ID ;;
  }

  dimension: created_auth_provider {
    type: string
    description: "Initial provider math expert used for first account authentication (google, facebook, local)"
    sql: ${TABLE}.CREATED_AUTH_PROVIDER ;;
  }

  dimension_group: email_verified_dt {
    type: time
    description: "Date and time of math expert's email verification"
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
    description: "Date and time of the math expert's first contribution (task solved) on Marketplace"
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
    description: "Indicates whether math expert confirmed his age"
    sql: ${TABLE}.IS_AGE_CONFIRMED ;;
  }

  dimension: is_deleted {
    type: yesno
    description: "Indicates whether user's account is deleted or not"
    sql: ${TABLE}.IS_DELETED ;;
  }

  dimension: is_enabled {
    type: yesno
    description: "Indicates whether user is enabled or not"
    sql: ${TABLE}.IS_ENABLED ;;
  }

  dimension: is_internal {
    type: yesno
    description: "Indicates whether math expert is actually internal"
    sql: ${TABLE}.IS_INTERNAL ;;
  }

  dimension: is_locked {
    type: yesno
    description: "Indicates whether user's account is locked or not"
    sql: ${TABLE}.IS_LOCKED ;;
  }

  dimension: last_auth_provider {
    type: string
    description: "Last provider math expert used for account authentication (google, facebook, local)"
    sql: ${TABLE}.LAST_AUTH_PROVIDER ;;
  }

  dimension_group: last_login_dt {
    type: time
    description: "Date and time of math expert's last login session"
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
    description: "If user's account is locked, shows date and time until which it's locked"
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
    description: "Surrogate key of a math expert created by the source database"
    sql: ${TABLE}.MATH_EXPERT_ID ;;
  }

  dimension: referred_by_math_expert_id {
    type: number
    description: "ID of the math expert who referred the given math expert (in case of referral, the registration is done via unique referral link provided by marketplace)"
    sql: ${TABLE}.REFERRED_BY_MATH_EXPERT_ID ;;
  }

  dimension_group: registered_from_dt {
    type: time
    description: "Date and time of math expert's account creation"
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
    description: "Date and time when math expert was deleted (if deleted)"
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
    description: "Date and time when math expert was assigned as a top performer"
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
    description: "Identifies a specific product promotion or strategic campaign"
    sql: ${TABLE}.UTM_CAMPAIGN ;;
  }

  dimension: utm_content {
    type: string
    description: "Identifies what specifically was clicked to bring the user to the site, such as a banner ad or a text link"
    sql: ${TABLE}.UTM_CONTENT ;;
  }

  dimension: utm_medium {
    type: string
    description: "Identifies what type of link was used, such as cost per click or email"
    sql: ${TABLE}.UTM_MEDIUM ;;
  }

  dimension: utm_source {
    type: string
    description: "Identifies which site sent the traffic (i.e. given math expert)"
    sql: ${TABLE}.UTM_SOURCE ;;
  }

  dimension: utm_term {
    type: string
    description: "Identifies search terms"
    sql: ${TABLE}.UTM_TERM ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
