view: dtbl_professor_subscriptions {
  #view created as a join of events and subscriptions data, in order to get all the users that came started their
  #trial or subscription (or churned) from a Professor paywall
  derived_table: {
    sql: SELECT
        device_id,
        subscriptions.event_id,
        subscriptions.event_date,
        DATE_TRUNC(subscriptions.event_date, WEEK) AS event_week,
        CASE
            WHEN  subscriptions.product like '%49%' THEN 'semi-annual'
            ELSE  subscriptions.product
        END as subscription_product,
        CASE
            WHEN subscriptions.event_name = 'TrialStart' THEN 'TrialStart'
            WHEN subscriptions.event_name IN ('ConversionToPurchase', 'ConversionFromBillingRetry') THEN 'ConversionToPurchase'
            WHEN subscriptions.event_name IN ('ChurnAfterPaidSubscription','ChurnAfterSubBillingRetry') THEN 'ChurnAfterPaidSubscription'
            ELSE NULL
        END AS subscription_event
      FROM `photomath-dwh-dev.TEMP.TBL_TEMP_PROFESSOR_APP_EVENTS` events
      LEFT JOIN `photomath-dwh-dev.STAGE.TBL_STAGE_APP_BQ_SUBSCRIPTIONANALYTICS` subscriptions ON events.user_id = subscriptions.device_id
      WHERE CAST(TIMESTAMP_MICROS(event_timestamp) AS DATETIME) <= DATE_ADD(subscriptions.event_date, INTERVAL 1 DAY)
      AND events.event_name = 'TrialStarted'
      AND subscriptions.event_name IN (
              'TrialStart',
              'ConversionToPurchase',
              'ConversionFromBillingRetry',
              'ChurnAfterPaidSubscription',
              'ChurnAfterSubBillingRetry'
              )
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: device_id {
    type: string
    sql: ${TABLE}.device_id ;;
  }

  dimension: event_id {
    type: number
    sql: ${TABLE}.event_id ;;
  }

  dimension_group: event_date {
    type: time
    datatype: datetime
    sql: ${TABLE}.event_date ;;
  }

  dimension_group: event_week {
    type: time
    datatype: datetime
    sql: ${TABLE}.event_week ;;
  }

  dimension: subscription_product {
    type: string
    sql: ${TABLE}.subscription_product ;;
  }

  dimension: subscription_event {
    type: string
    sql: ${TABLE}.subscription_event ;;
  }

  set: detail {
    fields: [
      device_id,
      event_id,
      event_date_time,
      event_week_time,
      subscription_product,
      subscription_event
    ]
  }
}
