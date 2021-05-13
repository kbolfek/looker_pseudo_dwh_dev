view: f_math_expert_activity {
  sql_table_name: `DWH.TBL_F_MATH_EXPERT_ACTIVITY`
    ;;

  dimension: activity_description {
    type: string
    sql: ${TABLE}.ACTIVITY_DESCRIPTION ;;
  }

  dimension: activity_duration {
    type: number
    sql: ${TABLE}.ACTIVITY_DURATION ;;
  }

  dimension: activity_price {
    type: number
    sql: ${TABLE}.ACTIVITY_PRICE ;;
  }

  dimension: activity_score {
    type: number
    sql: ${TABLE}.ACTIVITY_SCORE ;;
  }

  dimension_group: activity_started_dt {
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
    sql: ${TABLE}.ACTIVITY_STARTED_DT ;;
  }

  dimension: expert_job_id {
    type: number
    sql: ${TABLE}.EXPERT_JOB_ID ;;
  }

  dimension: math_area {
    type: string
    sql: ${TABLE}.MATH_AREA ;;
  }

  dimension: math_expert_activity_id {
    type: number
    sql: ${TABLE}.MATH_EXPERT_ACTIVITY_ID ;;
  }

  dimension: math_expert_activity_type {
    type: string
    sql: ${TABLE}.MATH_EXPERT_ACTIVITY_TYPE ;;
  }

  dimension: math_expert_id {
    type: number
    sql: ${TABLE}.MATH_EXPERT_ID ;;
  }

  dimension: math_task_id {
    type: number
    sql: ${TABLE}.MATH_TASK_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
