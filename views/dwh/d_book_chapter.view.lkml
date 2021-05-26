view: d_book_chapter {
  sql_table_name: `DWH.TBL_D_BOOK_CHAPTER`
    ;;

  dimension: book_chapter_id {
    type: number
    description: "Surrogate key of a book chapter created by the source database"
    sql: ${TABLE}.BOOK_CHAPTER_ID ;;
  }

  dimension: book_id {
    type: number
    description: "Foreign key to table D_BOOK. The book chapter belongs to."
    sql: ${TABLE}.BOOK_ID ;;
  }

  dimension: groups {
    type: string
    sql: ${TABLE}.`GROUPS` ;;
  }

  dimension: math_area {
    type: string
    description: "Math area of the chapter"
    sql: ${TABLE}.MATH_AREA ;;
  }

  dimension: solving_priority {
    type: number
    description: "Solving priority"
    sql: ${TABLE}.SOLVING_PRIORITY ;;
  }

  dimension: subtitle {
    type: string
    description: "Subtitle of the chapter"
    sql: ${TABLE}.SUBTITLE ;;
  }

  dimension: title {
    type: string
    description: "Title of the chapter"
    sql: ${TABLE}.TITLE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
