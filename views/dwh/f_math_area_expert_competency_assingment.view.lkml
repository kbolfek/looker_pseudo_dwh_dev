# The name of this view in Looker is "F Math Area Expert Competency Assingment"
view: f_math_area_expert_competency_assingment {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `DWH.TBL_F_MATH_AREA_EXPERT_COMPETENCY_ASSINGMENT`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Competency" in Explore.

  dimension: competency {
    type: number
    sql: ${TABLE}.COMPETENCY ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: competency_modification_dt {
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
    sql: ${TABLE}.COMPETENCY_MODIFICATION_DT ;;
  }

  dimension: math_area {
    type: string
    sql: ${TABLE}.MATH_AREA ;;
  }

  dimension: math_expert_id {
    type: number
    sql: ${TABLE}.MATH_EXPERT_ID ;;
  }

  dimension: math_expert_job_class_id {
    type: number
    sql: ${TABLE}.MATH_EXPERT_JOB_CLASS_ID ;;
  }

  dimension: math_expert_job_mode {
    type: string
    sql: ${TABLE}.MATH_EXPERT_JOB_MODE ;;
  }

  dimension: math_expert_job_type {
    type: string
    sql: ${TABLE}.MATH_EXPERT_JOB_TYPE ;;
  }

  dimension: math_task_type {
    type: string
    sql: ${TABLE}.MATH_TASK_TYPE ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.SCORE ;;
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

  measure: total_competency {
    type: sum
    hidden: yes
    sql: ${competency} ;;
  }

  measure: average_competency {
    type: average
    hidden: yes
    sql: ${competency} ;;
  }

  measure: total_score {
    type: sum
    hidden: yes
    sql: ${score} ;;
  }

  measure: average_score {
    type: average
    hidden: yes
    sql: ${score} ;;
  }
}
