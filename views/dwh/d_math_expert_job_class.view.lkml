view: d_math_expert_job_class {
  sql_table_name: `DWH.TBL_D_MATH_EXPERT_JOB_CLASS`
    ;;

  dimension: is_promo {
    type: yesno
    description: "Indicates whether it is promotional"
    sql: ${TABLE}.IS_PROMO ;;
  }

  dimension: math_expert_job_class_id {
    primary_key: yes
    type: number
    description: "Surrogate key of a job created by the source database"
    sql: ${TABLE}.MATH_EXPERT_JOB_CLASS_ID ;;
  }

  dimension: math_expert_job_type {
    type: string
    description: "Type of the job (review, enter)"
    sql: ${TABLE}.MATH_EXPERT_JOB_TYPE ;;
  }

  dimension: math_expert_job_mode {
    type: string
    description: "Mode of the job (regular, test, score, demo, trial, internal, external)"
    sql: ${TABLE}.MATH_EXPERT_JOB_MODE ;;
  }

  dimension: math_task_type {
    type: string
    description: "Math task type (example,variation,unique)"
    sql: ${TABLE}.MATH_TASK_TYPE ;;
  }

  dimension: task_source {
    type: string
    description: "Task creator source the job serves for (Bookpoint, Professor)"
    sql: ${TABLE}.TASK_SOURCE ;;
  }

  dimension: math_area {
    type: string
    description: "Math area job class referrs to"
    sql: ${TABLE}.MATH_AREA ;;
  }

  dimension: price {
    type: number
    description: "Base/starting price for all jobs which belong to that job_mode, that job_type, that math_area, that task_type and that task_source. "
    sql: ${TABLE}.PRICE ;;
  }

  dimension: priority {
    type: number
    description: "Priority of the job class; MATH_EXPERT will be presented with jobs having higher priority value first"
    sql: ${TABLE}.PRIORITY ;;
  }




# CUSTOM FIELDS
# all additional attributes and measures which do not exist in BQ matching table
# adding a description is mandatory

  measure: count {
    type: count
    drill_fields: []
  }
}
