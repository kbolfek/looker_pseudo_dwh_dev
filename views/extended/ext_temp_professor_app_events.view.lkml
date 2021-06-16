include: "/views/temp/*.view"
include: "/views/stage/*.view"

#explore: ext_temp_professor_app_events {}

view: ext_temp_professor_app_events {
    extends: [tbl_temp_professor_app_events]

  dimension: event_timestamp {
    type: date_time
    sql: TIMESTAMP_MICROS(event_timestamp) ;;
  }

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

  measure: number_of_users {
    description: "Number of unique users"
    type: count_distinct
    sql: ${user_id} ;;
    drill_fields: [event_date, number_of_users]
  }

  dimension: feature_engagement_status {
    type: string
    sql:
      CASE
          WHEN ${event_name}  = 'user_engagement'  THEN 'App Opened'
          WHEN ${event_name}  = 'ProfessorQuestionSent'  THEN 'Question Sent'
          WHEN ${event_name}  = 'ProfessorTaskResultShown'  THEN 'Solution Viewed'
          WHEN ${event_name}  = 'ProfessorTaskResultCtaClicked'  THEN 'Steps Viewed'
          WHEN ${event_name}  = 'ProfessorFeedbackAnswered'  THEN 'Solution Rated'
      END;;
  }

  dimension: feature_engagement_status_rank {
    type: number
    sql:
      CASE
        WHEN ${event_name} = 'user_engagement'  THEN '0'
        WHEN ${event_name}  = 'ProfessorQuestionSent'  THEN '1'
        WHEN ${event_name}  = 'ProfessorTaskResultShown'  THEN '2'
        WHEN ${event_name}  = 'ProfessorTaskResultCtaClicked'  THEN '3'
        WHEN ${event_name}  = 'ProfessorFeedbackAnswered'  THEN '4'
      END;;
  }

  dimension: customer_acquisition_funnel {
    description: "Dimension showing phases of Customer Acquisition funnel"
    type: string
    sql:
      CASE
        WHEN ${event_name}  = 'user_engagement' THEN 'App Opened'
        WHEN ${event_name}  = 'ProfessorInboxTaskLoadingSuccess' THEN 'Inbox Viewed'
        WHEN ${event_name}  = 'ProfessorAskNewQuestionClicked' THEN 'Inbox CTA Clicked'
        WHEN ${event_name}  = 'PopupPaywallShown' THEN 'AAE Paywall Shown'
        WHEN ${event_name}  = 'TrialStarted' AND ${professor_app_subscriptions.subscription_event}  = 'TrialStart' THEN 'Trial Started'
        WHEN ${event_name}  = 'TrialStarted' AND ${professor_app_subscriptions.subscription_event}  IN ('ConversionToPurchase', 'ConversionFromBillingRetry') THEN 'Subscribed'
      END
    ;;
  }

  dimension: customer_acquisition_funnel_rank {
    description: "Dimension used for sorting the Customer Acquisition funnel phases"
    type: number
    sql:
      CASE
        WHEN ${event_name}  = 'user_engagement' THEN 1
        WHEN ${event_name}  = 'ProfessorInboxTaskLoadingSuccess' THEN 2
        WHEN ${event_name}  = 'ProfessorAskNewQuestionClicked' THEN 3
        WHEN ${event_name}  = 'PopupPaywallShown' THEN 4
        WHEN ${event_name}  = 'TrialStarted'  AND ${professor_app_subscriptions.subscription_event}  = 'TrialStart' THEN 5
        WHEN ${event_name}  = 'TrialStarted'  AND ${professor_app_subscriptions.subscription_event}  IN ('ConversionToPurchase', 'ConversionFromBillingRetry') THEN 6
      END
    ;;
  }

  measure: number_of_questions_sent {
    #hidden: yes
    description: "Measure showing number of questions sent"
    type: count_distinct
    sql:
      CASE
        WHEN ${event_name} = 'ProfessorQuestionSent' AND ${event_params.key} = 'TaskId' THEN ${event_params.value__string_value}
        ELSE NULL
      END;;
  }

  measure: no_of_users_with_question_sent {
    description: "Measure showing number of users that sent at 1 question (i.e. triggered ProfessorQuestionSent event)"
    type: count_distinct
    sql: ${user_id};;
    filters: [event_name: "ProfessorQuestionSent"]
  }

  measure: number_of_users_with_app_opened {
    description: "Number of users that opened the app in specified time range"
    type: count_distinct
    sql: ${user_id} ;;
    filters: [event_name: "user_engagement"]
  }

  measure: number_of_subscriptions {
    description: "Number of subscribers from Professor paywall"
    type: count_distinct
    sql: ${user_id} ;;
    filters: [customer_acquisition_funnel: "Subscribed"]
  }

  measure: number_of_trials{
    description: "Number of trials started from Professor paywall"
    type: count_distinct
    sql: ${user_id} ;;
    filters: [customer_acquisition_funnel: "Trial Started"]
  }

  dimension: questions_sent_bucket {
    type: tier
    tiers: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    sql: ${dtbl_questions_sent_per_user.no_of_questions_sent_per_month} ;;
    style: integer
  }
}

view: ext_temp_professor_app_events__event_params {
  extends: [tbl_temp_professor_app_events__event_params]

  dimension: task_id {
    type: string
    sql: MAX(
        CASE
          WHEN ${key} = 'TaskId' THEN ${value__string_value}
          ELSE NULL
        END
        ) OVER (PARTITIION BY ${TABLE}.event_name) ;;
  }
}

#USER PROPERTIES
view: ext_temp_professor_app_events__user_properties{
  extends: [tbl_temp_professor_app_events__user_properties]

  dimension: professor_user_variant {
    type: string
    description: "User cohort label created for Professor"
    sql:
      CASE
        WHEN ${key} = "professor_variant" THEN LOWER(${value__string_value})
        ELSE NULL
      END;;
  }

  dimension: professor_user_group {
    type: string
    sql:
      CASE
        WHEN ${professor_user_variant} = 'variant2' AND ${professor_app_events.platform} = 'IOS' THEN 'iOS5'
        WHEN ${professor_user_variant} = 'variant3' AND ${professor_app_events.platform} = 'IOS' THEN 'iOS10'
        WHEN ${professor_user_variant} = 'variant2' AND ${professor_app_events.platform} = 'ANDROID' THEN 'Android5'
      END  ;;
  }

  dimension: user_subscription_status {
    type: string
    description: "User's subscription status (free, paid, trial)"
    sql:
      CASE
        WHEN ${key} = 'subscription_state' THEN ${value__string_value}
        ELSE NULL
      END;;
  }

  measure: number_of_paid_users {
    type: count_distinct
    sql: ${professor_app_events.user_id} ;;
    filters: [user_subscription_status: "paid"]
  }
}
