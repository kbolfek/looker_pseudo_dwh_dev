view: f_math_expert_qualification {
  sql_table_name: `DWH.TBL_F_MATH_EXPERT_QUALIFICATION`
    ;;

  dimension: math_area {
    type: string
    description: "Name of the math area"
    sql: ${TABLE}.MATH_AREA ;;
  }

  dimension: math_expert_id {
    type: number
    description: "Foreign key to table D_MATH_EXPERT"
    sql: ${TABLE}.MATH_EXPERT_ID ;;
  }

  dimension: previous_status {
    type: string
    description: "Shows previous Learning Management System (LMS) status to STATUS for that MATH_EXPERT and MATH_AREA combo"
    sql: ${TABLE}.PREVIOUS_STATUS ;;
  }

  dimension: status {
    type: string
    description: "Learning Management System (LMS) status of that MATH_EXPERT for that particular MATH_AREA"
    sql: ${TABLE}.STATUS ;;
  }

  dimension_group: status_change_dt {
    type: time
    description: "Datetime of Learning Management System (LMS) status change"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.STATUS_CHANGE_DT ;;
  }

  dimension_group: previous_status_change_dt {
    type: time
    description: "Datetime of Learning Management System (LMS) previous status change"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PREVIOUS_STATUS_CHANGE_DT ;;
  }

# CUSTOM FIELDS
# all additional attributes and measures which do not exist in BQ matching table
# adding a description is mandatory

  measure: count {
    type: count
    drill_fields: []
  }
}
