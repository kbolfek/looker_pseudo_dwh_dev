include: "/views/temp/*.view"

view: ext_professor_mktp_turnaround_time {
  extends: [tbl_professor_mktp_turnaround_time]

  dimension: task_id {
    value_format_name: id
  }

  dimension: diff_annotated_first_picked {
    label: "Time from Annotated to Picked"
  }

  dimension: diff_first_picked_solved {
    label: "Time from Picked to Solved"
  }

  dimension: diff_solved_first_review {
    label: "Time from Solved to First Review"
  }

  dimension: diff_first_second_review {
    label: "Time from First to Second Review"
  }

  dimension: diff_review_approved {
    label: "Time from Review to Approved"
  }

  dimension: task_turnaround {
    label: "Total time from task Annotation to Approval"
  }

  dimension: week_created {
    hidden: yes
  }

  measure: turnaround_time_25th_percentile {
    description: "Turnaround time; 25th percentile"
    type: percentile
    percentile: 25
    sql: ${task_turnaround} ;;
  }

  measure: turnaround_time_75th_percentile {
    description: "Turnaround time: 75th percentile"
    type: percentile
    percentile: 75
    sql: ${task_turnaround} ;;
  }

  measure: turnaround_time_90th_percentile {
    description: "Turnaround time: 90th percentile"
    type: percentile
    percentile: 90
    sql: ${task_turnaround} ;;
  }

  measure: turnaround_time_median {
    description: "Turnaround time: Median"
    type: median
    sql: ${task_turnaround} ;;
  }

  measure: turnaround_time_sum {
    description: "Turnaround time: Sum"
    type: sum
    sql: ${task_turnaround};;
    drill_fields: [drill_by_task*]
  }

  set: drill_by_task {
    fields: [task_id, task_turnaround, task_times_skipped, times_skipped_not_picked]
  }

  measure: number_of_tasks {
    description: "Number of tasks"
    type: count_distinct
    sql: ${task_id} ;;
    drill_fields: [drill_by_task*]
  }
}
