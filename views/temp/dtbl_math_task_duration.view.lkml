
view: dtbl_math_task_duration {
  derived_table: {
    sql: SELECT
          task.MATH_TASK_ID,
          MIN(CASE WHEN activity.MATH_EXPERT_ACTIVITY_TYPE = 'picked' THEN activity.ACTIVITY_STARTED_DT END) AS task_first_picked,
          MIN(CASE WHEN activity.MATH_EXPERT_ACTIVITY_TYPE = 'passed' THEN activity.ACTIVITY_STARTED_DT END) AS task_approved,
          DATETIME_DIFF(
              min(CASE WHEN activity.MATH_EXPERT_ACTIVITY_TYPE = 'picked' THEN activity.ACTIVITY_STARTED_DT END),
              min(CASE WHEN activity.MATH_EXPERT_ACTIVITY_TYPE = 'passed' THEN activity.ACTIVITY_STARTED_DT END),
              minute
              ) / 60 AS duration_in_hours
      FROM `photomath-dwh-dev.DWH.TBL_D_MATH_TASK` task
      LEFT JOIN `photomath-dwh-dev.DWH.TBL_F_MATH_EXPERT_ACTIVITY` activity ON task.MATH_TASK_ID = activity.MATH_TASK_ID
      GROUP BY 1
       ;;
  }

  measure: count {
    type: count
  }

  dimension: math_task_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.MATH_TASK_ID ;;
  }

  dimension_group: task_first_picked {
    type: time
    sql: ${TABLE}.task_first_picked ;;
  }

  dimension_group: task_approved {
    type: time
    sql: ${TABLE}.task_approved ;;
  }

  dimension: duration_in_hours {
    type: number
    sql: ${TABLE}.duration_in_hours ;;
  }

}
