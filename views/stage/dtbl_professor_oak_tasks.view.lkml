view: dtbl_professor_oak_tasks {
  derived_table: {
    sql: SELECT *,
      CASE
          WHEN rejection_reason IS NULL THEN
              CAST(
                  TIMESTAMP_DIFF(
                      IF(task_completed_timestamp IS NULL, CURRENT_TIMESTAMP(), task_completed_timestamp),
                      task_created_timestamp,
                      MINUTE
                      ) / 60
              AS float64)
          ELSE NULL
      END AS task_duration_in_hours
      FROM (
            SELECT
            id,
            proposedMathField as proposed_math_field,
            MAX(CASE WHEN no_of_reasons > 1 THEN 'multipleReasons' ELSE reason END) AS rejection_reason,
            MAX(taskId) AS task_id,
            MAX(mathField) AS math_field,
            MAX(created) AS task_created_timestamp,
            MAX(completed) AS task_completed_timestamp,
            MAX(rejected) AS task_rejected_timestamp
            FROM (
            SELECT
                id,
                proposedMathField,
                steps.mathField,
                steps.type,
                COUNT(DISTINCT reason) OVER (PARTITION BY id) AS no_of_reasons,
                reason,
          IF(steps.type = 'waitingForExpert',
              steps.taskId,
              NULL
          ) AS taskId,
          IF
              (steps.type = 'created',
              steps.created.date,
              NULL) AS created,
            IF
                (steps.type = 'completed',
                steps.created.date,
                NULL) AS completed,
            IF
                (steps.type = 'rejected',
                steps.created.date,
                NULL) AS rejected
            FROM
                `photomath-dwh-dev.STAGE.TBL_MONGODB_TASK` task,
                UNNEST(steps) AS steps
            LEFT JOIN
                UNNEST(steps.reason) AS reason
            WHERE image NOT LIKE "%erudite-idea-777-dev/%"
              )
            GROUP BY
            id,
            proposedMathField
      )
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: proposed_math_field {
    type: string
    sql: ${TABLE}.proposed_math_field ;;
  }

  dimension: rejection_reason {
    type: string
    sql: ${TABLE}.rejection_reason ;;
  }

  dimension: task_id {
    type: number
    sql: ${TABLE}.task_id ;;
  }

  dimension: math_field {
    type: string
    sql: ${TABLE}.math_field ;;
  }

  dimension_group: task_created_timestamp {
    type: time
    sql: ${TABLE}.task_created_timestamp ;;
  }

  dimension_group: task_completed_timestamp {
    type: time
    sql: ${TABLE}.task_completed_timestamp ;;
  }

  dimension_group: task_rejected_timestamp {
    type: time
    sql: ${TABLE}.task_rejected_timestamp ;;
  }

  dimension: task_duration_in_hours {
    type: number
    sql: ${TABLE}.task_duration_in_hours ;;
  }

  set: detail {
    fields: [
      id,
      proposed_math_field,
      rejection_reason,
      task_id,
      math_field,
      task_created_timestamp_time,
      task_completed_timestamp_time,
      task_rejected_timestamp_time,
      task_duration_in_hours
    ]
  }
}
