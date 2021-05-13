view: f_math_task_variation_example {
  sql_table_name: `DWH.TBL_F_MATH_TASK_VARIATION_EXAMPLE`
    ;;

  dimension: math_task_example_id {
    type: number
    sql: ${TABLE}.MATH_TASK_EXAMPLE_ID ;;
  }

  dimension: math_task_variation_id {
    type: number
    sql: ${TABLE}.MATH_TASK_VARIATION_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
