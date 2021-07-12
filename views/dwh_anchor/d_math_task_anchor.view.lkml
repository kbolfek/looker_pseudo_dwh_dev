view: d_math_task_anchor {
  sql_table_name: `DWH.TBL_D_MATH_TASK`
    ;;

  dimension: book_chapter_id {
    type: number
    description: "Foreign key to table D_BOOK_CHAPTER"
    sql: ${TABLE}.BOOK_CHAPTER_ID ;;
  }

  dimension: book_id {
    type: number
    description: "Foreign key to table D_BOOK"
    sql: ${TABLE}.BOOK_ID ;;
  }

  dimension: book_page_id {
    type: number
    description: "Foreign key to table D_BOOK_PAGE"
    sql: ${TABLE}.BOOK_PAGE_ID ;;
  }

  dimension: caption {
    type: string
    description: "Caption of the task in the book"
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

  dimension_group: created_dt {
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
    sql: ${TABLE}.CREATED_DT ;;
  }

  dimension: expression {
    type: string
    description: "Math expression of the task"
    sql: ${TABLE}.EXPRESSION ;;
  }

  dimension: is_solved {
    type: yesno
    sql: ${TABLE}.IS_SOLVED ;;
  }

  dimension: math_area {
    type: string
    description: "Math area the task belongs to"
    sql: ${TABLE}.MATH_AREA ;;
  }

  dimension: math_task_id {
    type: number
    description: "Surrogate key of a math task created by the source database"
    sql: ${TABLE}.MATH_TASK_ID ;;
  }

  dimension: math_task_type {
    type: string
    description: "Math task type"
    sql: ${TABLE}.MATH_TASK_TYPE ;;
  }

  dimension: outline {
    type: string
    description: "Outline of the task in the book"
    sql: ${TABLE}.OUTLINE ;;
  }

  dimension: priority {
    type: number
    description: "Priority of the task"
    sql: ${TABLE}.PRIORITY ;;
  }

  dimension: solution {
    type: string
    description: "Solution of the task"
    sql: ${TABLE}.SOLUTION ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: text {
    type: string
    description: "Text content of the task"
    sql: ${TABLE}.TEXT ;;
  }

  dimension: task_source {
    type: string
    description: "Source of the task (Professor or Bookpoint)"
    sql: ${TABLE}.TASK_SOURCE ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}