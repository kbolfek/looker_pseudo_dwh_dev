view: d_book_chapter {
  sql_table_name: `DWH.TBL_D_BOOK_CHAPTER`
    ;;

  dimension: book_chapter_id {
    type: number
    sql: ${TABLE}.BOOK_CHAPTER_ID ;;
  }

  dimension: book_id {
    type: number
    sql: ${TABLE}.BOOK_ID ;;
  }

  dimension: groups {
    type: string
    sql: ${TABLE}.`GROUPS` ;;
  }

  dimension: math_area {
    type: string
    sql: ${TABLE}.MATH_AREA ;;
  }

  dimension: solving_priority {
    type: number
    sql: ${TABLE}.SOLVING_PRIORITY ;;
  }

  dimension: subtitle {
    type: string
    sql: ${TABLE}.SUBTITLE ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.TITLE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
