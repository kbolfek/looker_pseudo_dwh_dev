view: d_math_task_type {
  sql_table_name: `DWH.TBL_D_MATH_TASK_TYPE`
    ;;

  dimension: math_task_type {
    type: string
    description: "Review model code"
    sql: ${TABLE}.MATH_TASK_TYPE ;;
  }

  dimension: math_task_type_description {
    type: string
    description: "Review model code description"
    sql: ${TABLE}.MATH_TASK_TYPE_DESCRIPTION ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
