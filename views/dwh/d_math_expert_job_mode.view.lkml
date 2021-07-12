view: d_math_expert_job_mode {
  sql_table_name: `DWH.TBL_D_MATH_EXPERT_JOB_MODE`
    ;;

  dimension: math_expert_job_mode {
    primary_key: yes
    type: string
    description: "Mode of the job"
    sql: ${TABLE}.MATH_EXPERT_JOB_MODE ;;
  }

  dimension: math_expert_job_mode_description {
    type: string
    description: "Description for the mode"
    sql: ${TABLE}.MATH_EXPERT_JOB_MODE_DESCRIPTION ;;
  }

# CUSTOM FIELDS
# all additional attributes and measures which do not exist in BQ matching table
# adding a description is mandatory

  measure: count {
    type: count
    drill_fields: []
  }
}
