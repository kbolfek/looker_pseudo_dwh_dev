view: dtbl_questions_sent_per_user {
  derived_table: {
    sql: SELECT
          user_id,
          ROUND(AVG(no_of_questions_sent_per_month),0) as no_of_questions_sent_per_month
      FROM (
          SELECT
              professor_app_events.user_id  AS user_id,
              CAST(DATE_TRUNC(TIMESTAMP_MICROS(professor_app_events.event_timestamp), MONTH) AS DATE) AS event_date_month,
              COUNT(DISTINCT CASE
                  WHEN  professor_app_events.event_name   = 'ProfessorQuestionSent' AND  event_params.key   = 'TaskId' THEN  event_params.value.string_value
                  ELSE NULL
              END)
              OVER (PARTITION BY professor_app_events.user_id, DATE_TRUNC(TIMESTAMP_MICROS(professor_app_events.event_timestamp), MONTH)) AS no_of_questions_sent_per_month
          FROM `photomath-dwh-dev.TEMP.TBL_TEMP_PROFESSOR_APP_EVENTS`
              AS professor_app_events
          LEFT JOIN UNNEST(professor_app_events.event_params) as event_params
          )
      GROUP BY user_id
       ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: no_of_questions_sent_per_month {
    type: number
    sql: ${TABLE}.no_of_questions_sent_per_month ;;
  }

  set: detail {
    fields: [user_id, no_of_questions_sent_per_month]
  }
}
