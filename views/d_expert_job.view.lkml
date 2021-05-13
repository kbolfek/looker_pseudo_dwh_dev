view: d_expert_job {
  sql_table_name: `DWH.TBL_D_EXPERT_JOB`
    ;;

  dimension_group: completed_dt {
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
    sql: ${TABLE}.COMPLETED_DT ;;
  }

  dimension_group: created_dt {
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
    sql: ${TABLE}.CREATED_DT ;;
  }

  dimension: expert_job_id {
    type: number
    sql: ${TABLE}.EXPERT_JOB_ID ;;
  }

  dimension: expert_job_type {
    type: string
    sql: ${TABLE}.EXPERT_JOB_TYPE ;;
  }

  dimension: is_promo {
    type: yesno
    sql: ${TABLE}.IS_PROMO ;;
  }

  dimension: is_succeeded {
    type: yesno
    sql: ${TABLE}.IS_SUCCEEDED ;;
  }

  dimension_group: leased_until_dt {
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
    sql: ${TABLE}.LEASED_UNTIL_DT ;;
  }

  dimension: math_expert_id {
    type: number
    sql: ${TABLE}.MATH_EXPERT_ID ;;
  }

  dimension: math_field {
    type: string
    sql: ${TABLE}.MATH_FIELD ;;
  }

  dimension: math_task_id {
    type: number
    sql: ${TABLE}.MATH_TASK_ID ;;
  }

  dimension: parent_expert_job_id {
    type: number
    sql: ${TABLE}.PARENT_EXPERT_JOB_ID ;;
  }

  dimension_group: picked_dt {
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
    sql: ${TABLE}.PICKED_DT ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.PRICE ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.PRIORITY ;;
  }

  dimension: review_model {
    type: string
    sql: ${TABLE}.REVIEW_MODEL ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.SCORE ;;
  }

  dimension: visual_bonus {
    type: number
    sql: ${TABLE}.VISUAL_BONUS ;;
  }

  dimension: visual_score {
    type: number
    sql: ${TABLE}.VISUAL_SCORE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
