view: f_math_task_variation_example {
  sql_table_name: `DWH.TBL_F_MATH_TASK_VARIATION_EXAMPLE`
    ;;

  dimension: math_task_example_id {
    type: number
    description: "Foreign key to D_MATH_TASK. Task which is the example task"
    sql: ${TABLE}.MATH_TASK_EXAMPLE_ID ;;
  }

  dimension: math_task_variation_id {
    type: number
    description: "Foreign key to D_MATH_TASK. Task which is the variation of the example task"
    sql: ${TABLE}.MATH_TASK_VARIATION_ID ;;
  }

# CUSTOM FIELDS
# all additional attributes and measures which do not exist in BQ matching table
# adding a description is mandatory

  measure: count {
    type: count
    drill_fields: []
  }
}
