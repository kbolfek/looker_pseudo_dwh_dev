view: d_math_expert_job_anchor {
  sql_table_name: `DWH.TBL_D_MATH_EXPERT_JOB`
    ;;

  dimension_group: completed_dt {
    type: time
    description: "Timestamp of MATH_EXPERT finishing working on a job."
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
    description: "Date and time when job was created"
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

  dimension: is_promo {
    type: yesno
    sql: ${TABLE}.IS_PROMO ;;
  }

  dimension: is_succeeded {
    type: yesno
    description: "Job is successfully done (passed or failed)"
    sql: ${TABLE}.IS_SUCCEEDED ;;
  }

  dimension_group: leased_until_dt {
    type: time
    description: "Picking job makes time limited lease on a job. After lease expires, another MATH EXPER can pick it up."
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
    description: "Foreing key to table D_MATH_EXPERT. This is either id of the person solving or reviewing a task; depending on the JOB_TYPE_ID. If JOB_TYPE_ID is review, math expert is a reviewer, and if JOB_TYPE_ID is enter, then the math expert is actually the solver solving TASK_ID."
    sql: ${TABLE}.MATH_EXPERT_ID ;;
  }

  dimension: math_expert_job_id {
    type: number
    description: "Surrogate key of a job created by the source database"
    sql: ${TABLE}.MATH_EXPERT_JOB_ID ;;
  }

  dimension: math_expert_job_type {
    type: string
    description: "Type of the job (review, test, score, enter)"
    sql: ${TABLE}.MATH_EXPERT_JOB_TYPE ;;
  }

  dimension: math_area {
    type: string
    description: "Math area job belongs to"
    sql: ${TABLE}.MATH_AREA ;;
  }

  dimension: math_task_id {
    type: number
    description: "Foreign key to table D_MATH_TASK"
    sql: ${TABLE}.MATH_TASK_ID ;;
  }

  dimension: parent_expert_job_id {
    type: number
    description: "Foreing key to table D_EXPERT_JOB. It reffers to the parent job of the JOB_ID, and only jobs with JOB_TYPE_ID = review should have this column filled in, since review jobs are triggered by solved enter jobs (solving a task should be reviewed and hence review jobs are created). Parent job should always have its JOB_TYPE_ID = enter. Parent job always has to be completed before proceeding with JOB_ID."
    sql: ${TABLE}.PARENT_EXPERT_JOB_ID ;;
  }

  dimension_group: picked_dt {
    type: time
    description: "Timestamp of MATH_EXPERT starting working on a job."
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
    description: "Price offered for a job"
    sql: ${TABLE}.PRICE ;;
  }

  dimension: priority {
    type: number
    description: "Priority of the job; MATH_EXPERT will be presented with jobs having higher priority value first"
    sql: ${TABLE}.PRIORITY ;;
  }

  dimension: review_model {
    type: string
    description: "Model of the review job done on the specific task, derived from the rules specified"
    sql: ${TABLE}.REVIEW_MODEL ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.SCORE ;;
  }

  dimension: topic_id {
    type: number
    description: "Foreign key to table D_TOPIC"
    sql: ${TABLE}.TOPIC_ID ;;
  }

  dimension: visual_bonus {
    type: number
    description: "Defines a specific bonus for creating visual content."
    sql: ${TABLE}.VISUAL_BONUS ;;
  }

  dimension: visual_score {
    type: number
    description: "Defines a specific score for creating visual content."
    sql: ${TABLE}.VISUAL_SCORE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
