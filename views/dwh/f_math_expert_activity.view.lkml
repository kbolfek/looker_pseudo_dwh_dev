view: f_math_expert_activity {
  sql_table_name: `DWH.TBL_F_MATH_EXPERT_ACTIVITY`
    ;;

  dimension: activity_description {
    type: string
    description: "Description of the activity"
    sql: ${TABLE}.ACTIVITY_DESCRIPTION ;;
  }

  dimension: activity_duration {
    type: number
    description: "Activity duration in seconds"
    sql: ${TABLE}.ACTIVITY_DURATION ;;
  }

  dimension: activity_price {
    type: number
    description: "Price that will be paid to the user"
    sql: ${TABLE}.ACTIVITY_PRICE ;;
  }

  dimension: activity_score {
    type: number
    description: "Score assigned for the specific review job. 0 if enter job was declared as incorrect or value from 1-5 if enter job was declared as correct by specific reviewer"
    sql: ${TABLE}.ACTIVITY_SCORE ;;
  }

  dimension_group: activity_started_dt {
    type: time
    description: "Date and time of when the activity was recoreded in the database"
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

  dimension: math_expert_job_id {
    type: number
    description: "Foreign key to D_EXPERT_JOB. Which job is being tackled"
    sql: ${TABLE}.MATH_EXPERT_JOB_ID ;;
  }

  dimension: math_area {
    type: string
    description: "Math area the activity referrs to"
    sql: ${TABLE}.MATH_AREA ;;
  }

  dimension: math_expert_activity_id {
    primary_key: yes
    type: number
    description: "Surrogate key of a math expert activity created by the source database"
    sql: ${TABLE}.MATH_EXPERT_ACTIVITY_ID ;;
  }

  dimension: math_expert_activity_type {
    type: string
    description: "Type of the activity performed by expert"
    sql: ${TABLE}.MATH_EXPERT_ACTIVITY_TYPE ;;
  }

  dimension: math_expert_id {
    type: number
    description: "Foreign key to D_MATH_EXPERT. Who triggered/did the activity"
    sql: ${TABLE}.MATH_EXPERT_ID ;;
  }

  dimension: math_task_id {
    type: number
    description: "Foreign key to D_MATH_TASK. Which task is the activity about"
    sql: ${TABLE}.MATH_TASK_ID ;;
  }

# CUSTOM FIELDS
# all additional attributes and measures which do not exist in BQ matching table
# adding a description is mandatory

  measure: count {
    type: count
    drill_fields: []
  }
}
