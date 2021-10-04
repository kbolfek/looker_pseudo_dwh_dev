# The name of this view in Looker is "Tbl F Math Expert Final Test Result"
view: f_math_expert_final_test_result {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `DWH.TBL_F_MATH_EXPERT_FINAL_TEST_RESULT`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: final_test_job_completed_dt {
    type: time
    description: "Date and time of when the job connected to the task was submitted by the MATH_EXPERT_ID."
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FINAL_TEST_JOB_COMPLETED_DT ;;
  }

  dimension_group: final_test_reviewed_dt {
    type: time
    description: "Date and time of the finished test review; when expert got FINAL_SCORED or REVIEW_FINAL_SCORED status."
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FINAL_TEST_REVIEWED_DT ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Math Area" in Explore.

  dimension: math_area {
    type: string
    description: "Math area the final test covers."
    sql: ${TABLE}.MATH_AREA ;;
  }

  dimension: math_expert_final_test_result_id {
    type: number
    description: "Surrogate key of a final test result created by the source database."
    sql: ${TABLE}.MATH_EXPERT_FINAL_TEST_RESULT_ID ;;
  }

  dimension: math_expert_id {
    type: number
    description: "Foreign key to D_MATH_EXPERT. ID of the math expert taking the final test."
    sql: ${TABLE}.MATH_EXPERT_ID ;;
  }

  dimension: math_expert_job_class_id {
    type: number
    description: "Foreign key to D_MATH_EXPERT_JOB_CLASS."
    sql: ${TABLE}.MATH_EXPERT_JOB_CLASS_ID ;;
  }

  dimension: math_expert_job_id {
    type: number
    description: "Foreign key to D_MATH_EXPERT_JOB. Points to ID of the job used in the final test."
    sql: ${TABLE}.MATH_EXPERT_JOB_ID ;;
  }

  dimension: math_expert_job_mode {
    type: string
    description: "Type of the job (regular, demo, trial, internal, external, test, score)"
    sql: ${TABLE}.MATH_EXPERT_JOB_MODE ;;
  }

  dimension: math_expert_job_type {
    type: string
    description: "Type of the job (review, enter)."
    sql: ${TABLE}.MATH_EXPERT_JOB_TYPE ;;
  }

  dimension: math_task_id {
    type: number
    description: "Foreign key to D_MATH_TASK. Points to ID of the math task solved in the final test."
    sql: ${TABLE}.MATH_TASK_ID ;;
  }

  dimension: point_qty {
    type: number
    description: "Points assigned to the solved test task by the reviewer."
    sql: ${TABLE}.POINT_QTY ;;
  }

  dimension: reviewer_math_expert_id {
    type: number
    description: "Foreign key to D_MATH_EXPERT. Points to ID of an internal math expert who reviewed the test."
    sql: ${TABLE}.REVIEWER_MATH_EXPERT_ID ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: []
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_point_qty {
    type: sum
    hidden: yes
    sql: ${point_qty} ;;
  }

  measure: average_point_qty {
    type: average
    hidden: yes
    sql: ${point_qty} ;;
  }
}
