view: d_math_area_expert {
  sql_table_name: `DWH.TBL_D_MATH_AREA_EXPERT`
    ;;

  dimension: is_professor_qualified {
    type: yesno
    sql: ${TABLE}.IS_PROFESSOR_QUALIFIED ;;
  }

  dimension: is_reviewing_qualified {
    type: yesno
    sql: ${TABLE}.IS_REVIEWING_QUALIFIED ;;
  }

  dimension: is_solving_qualified {
    type: yesno
    sql: ${TABLE}.IS_SOLVING_QUALIFIED ;;
  }

  dimension: math_area {
    type: string
    sql: ${TABLE}.MATH_AREA ;;
  }

  dimension: math_expert_id {
    type: number
    sql: ${TABLE}.MATH_EXPERT_ID ;;
  }

  dimension: previous_status {
    type: string
    sql: ${TABLE}.PREVIOUS_STATUS ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension_group: status_change_dt {
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
    sql: ${TABLE}.STATUS_CHANGE_DT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
