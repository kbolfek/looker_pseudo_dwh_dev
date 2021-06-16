view: tbl_professor_mktp_turnaround_time {
  sql_table_name: `photomath-dwh-dev.TEMP.TBL_PROFESSOR_MKTP_TURNAROUND_TIME`
    ;;

  dimension: active_experts {
    type: number
    sql: ${TABLE}.active_experts ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created ;;
  }

  dimension: diff_annotated_first_picked {
    type: number
    sql: ${TABLE}.diff_annotated_first_picked ;;
  }

  dimension: diff_first_picked_solved {
    type: number
    sql: ${TABLE}.diff_first_picked_solved ;;
  }

  dimension: diff_first_second_review {
    type: number
    sql: ${TABLE}.diff_first_second_review ;;
  }

  dimension: diff_review_approved {
    type: number
    sql: ${TABLE}.diff_review_approved ;;
  }

  dimension: diff_solved_first_review {
    type: number
    sql: ${TABLE}.diff_solved_first_review ;;
  }

  dimension: math_field {
    type: string
    sql: ${TABLE}.math_field ;;
  }

  dimension: task_cost {
    type: number
    sql: ${TABLE}.task_cost ;;
  }

  dimension: task_id {
    type: number
    sql: ${TABLE}.task_id ;;
  }

  dimension: task_times_skipped {
    type: number
    sql: ${TABLE}.task_times_skipped ;;
  }

  dimension: task_turnaround {
    type: number
    sql: ${TABLE}.task_turnaround ;;
  }

  dimension: time_from_first_pick_not_solved {
    type: number
    sql: ${TABLE}.time_from_first_pick_not_solved ;;
  }

  dimension: time_from_first_solve_not_reviewed {
    type: number
    sql: ${TABLE}.time_from_first_solve_not_reviewed ;;
  }

  dimension: times_skipped_not_picked {
    type: number
    sql: ${TABLE}.times_skipped_not_picked ;;
  }

  dimension: week_created {
    type: number
    sql: ${TABLE}.week_created ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
