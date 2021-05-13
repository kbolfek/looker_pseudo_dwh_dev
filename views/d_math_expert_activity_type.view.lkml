view: d_math_expert_activity_type {
  sql_table_name: `DWH.TBL_D_MATH_EXPERT_ACTIVITY_TYPE`
    ;;

  dimension: math_expert_activity_type {
    type: string
    sql: ${TABLE}.MATH_EXPERT_ACTIVITY_TYPE ;;
  }

  dimension: math_expert_activity_type_description {
    type: string
    sql: ${TABLE}.MATH_EXPERT_ACTIVITY_TYPE_DESCRIPTION ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
