view: d_math_area {
  sql_table_name: `DWH.TBL_D_MATH_AREA`
    ;;

  dimension: math_area {
    type: string
    description: "Area of mathematics"
    sql: ${TABLE}.MATH_AREA ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
