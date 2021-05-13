view: d_expert_job_type {
  sql_table_name: `DWH.TBL_D_EXPERT_JOB_TYPE`
    ;;

  dimension: expert_job_type {
    type: string
    sql: ${TABLE}.EXPERT_JOB_TYPE ;;
  }

  dimension: expert_job_type_description {
    type: string
    sql: ${TABLE}.EXPERT_JOB_TYPE_DESCRIPTION ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
