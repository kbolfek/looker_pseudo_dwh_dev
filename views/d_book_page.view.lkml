view: d_book_page {
  sql_table_name: `DWH.TBL_D_BOOK_PAGE`
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

  dimension: file {
    type: string
    sql: ${TABLE}.FILE ;;
  }

  dimension: hdpi {
    type: number
    sql: ${TABLE}.HDPI ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}.HEIGHT ;;
  }

  dimension: ord {
    type: number
    sql: ${TABLE}.ORD ;;
  }

  dimension: page_no {
    type: string
    sql: ${TABLE}.PAGE_NO ;;
  }

  dimension: wdpi {
    type: number
    sql: ${TABLE}.WDPI ;;
  }

  dimension: width {
    type: number
    sql: ${TABLE}.WIDTH ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
