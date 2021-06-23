include: "/views/stage/*.view"

view: ext_professor_oak_tasks {
  extends: [dtbl_professor_oak_tasks]

  measure: number_of_tasks {
    description: "Number of tasks submitted - by Professor users"
    type: count_distinct
    sql: ${id} ;;
    drill_fields: [math_field, number_of_tasks]
    link: {
      label: "Show by Math Field"
      url: "
        {% assign vis_config = '{
            \"type\": \"looker_bar\" ,
            \"show_value_labels\": true ,
            \"y_axis_gridlines\": false ,
            \"show_y_axis_ticks\": false
            }'
        %}
        {{ link }}&vis_config={{ vis_config | encode_uri }}&toggle=dat,pik,vis&limit=5000"
      }
  }

  measure: number_of_completed_tasks {
    description: "Number of completed tasks - submitted by Professor users"
    type: count_distinct
    sql: ${id} ;;
    filters: [task_completed_timestamp_date: "-NULL"]
  }

  measure: number_of_uncompleted_tasks {
    description: "Number of uncompleted tasks - submitted by Professor users"
    type: count_distinct
    sql: ${id} ;;
    filters: [task_completed_timestamp_date: "NULL"]
  }

  measure: number_of_rejected_tasks {
    description: "Number of rejected tasks - submitted by Professor users"
    type: count_distinct
    sql: ${id} ;;
    filters: [rejection_reason: "-NULL"]
    html:
      <p style="color: #BF0C34;">{{ rendered_value }}</p>;;
  }

  measure: number_of_tasks_in_progress {
    description: "Number of tasks in progress - submitted by Professor users"
    type: count_distinct
    sql: ${id} ;;
    filters: [rejection_reason: "-NULL", task_completed_timestamp_date: "-NULL"]
  }

  measure: task_completion_rate {
    type: number
    value_format_name: percent_1
    sql: ${number_of_completed_tasks} / ${number_of_tasks} ;;
  }

  measure: task_rejection_rate {
    type: number
    value_format_name: percent_1
    sql: ${number_of_rejected_tasks} / ${number_of_tasks} ;;
    html:
      <p style="color: #BF0C34;">{{ rendered_value }}</p>;;
  }

  dimension: turnaround_time_bucket {
    type: tier
    tiers: [0, 0.5, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    sql: ${task_duration_in_hours} ;;
    style: relational
  }

}
