view: d_book_page {
  sql_table_name: `DWH.TBL_D_BOOK_PAGE`
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
    primary_key: yes
    type: number
    description: "Surrogate key of a book page created by the source database"
    sql: ${TABLE}.BOOK_PAGE_ID ;;
  }

  dimension: file {
    type: string
    description: "Name of the file containing page scan"
    sql: ${TABLE}.FILE ;;
  }

  dimension: hdpi {
    type: number
    description: "Hdpi of the page"
    sql: ${TABLE}.HDPI ;;
  }

  dimension: height {
    type: number
    description: "Height of the page"
    sql: ${TABLE}.HEIGHT ;;
  }

  dimension: ord {
    type: number
    sql: ${TABLE}.ORD ;;
  }

  dimension: page_no {
    type: string
    description: "Page number"
    sql: ${TABLE}.PAGE_NO ;;
  }

  dimension: wdpi {
    type: number
    description: "Wdpi of the page"
    sql: ${TABLE}.WDPI ;;
  }

  dimension: width {
    type: number
    description: "Width of the page"
    sql: ${TABLE}.WIDTH ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
