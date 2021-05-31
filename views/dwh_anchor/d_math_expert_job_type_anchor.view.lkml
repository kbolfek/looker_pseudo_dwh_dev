view: d_math_expert_job_type_anchor {
  sql_table_name: `DWH.TBL_D_MATH_EXPERT_JOB_TYPE`
    ;;

  dimension: math_expert_job_type {
    type: string
    description: "Type of the job"
    sql: ${TABLE}.MATH_EXPERT_JOB_TYPE ;;
  }

  dimension: math_expert_job_type_description {
    type: string
    description: "Description for the type"
    sql: ${TABLE}.MATH_EXPERT_JOB_TYPE_DESCRIPTION ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
