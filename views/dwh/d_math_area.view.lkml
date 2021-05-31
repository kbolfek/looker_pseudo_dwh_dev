view: d_math_area {
  sql_table_name: `DWH.TBL_D_MATH_AREA`
    ;;

  dimension: math_area {
    primary_key: yes
    type: string
    description: "Area of mathematics"
    sql: ${TABLE}.MATH_AREA ;;
  }

# CUSTOM FIELDS
# all additional attributes and measures which do not exist in BQ matching table
# adding a description is mandatory

  measure: count {
    type: count
    drill_fields: []
  }
}
