view: d_math_task {
  sql_table_name: `DWH.TBL_D_MATH_TASK`
    ;;

  dimension: book_chapter_id {
    type: number
    sql: ${TABLE}.BOOK_CHAPTER_ID ;;
  }

  dimension: book_id {
    type: number
    sql: ${TABLE}.BOOK_ID ;;
  }

  dimension: book_page_id {
    type: number
    sql: ${TABLE}.BOOK_PAGE_ID ;;
  }

  dimension: caption {
    type: string
    sql: ${TABLE}.CAPTION ;;
  }

  dimension_group: completed_dt {
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
    sql: ${TABLE}.COMPLETED_DT ;;
  }

  dimension: expression {
    type: string
    sql: ${TABLE}.EXPRESSION ;;
  }

  dimension: is_solved {
    type: yesno
    sql: ${TABLE}.IS_SOLVED ;;
  }

  dimension: math_area {
    type: string
    sql: ${TABLE}.MATH_AREA ;;
  }

  dimension: math_task_id {
    type: number
    sql: ${TABLE}.MATH_TASK_ID ;;
  }

  dimension: math_task_type {
    type: string
    sql: ${TABLE}.MATH_TASK_TYPE ;;
  }

  dimension: outline {
    type: string
    sql: ${TABLE}.OUTLINE ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.PRIORITY ;;
  }

  dimension: solution {
    type: string
    sql: ${TABLE}.SOLUTION ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.TEXT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
