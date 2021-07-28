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


  dimension: annotation_status {
    type: string
    description: "Status of the annotation - 1.NOT_ANNOTATED (the page is not annotated yet), 2.ANNOTATED (the page is annotated, and ready to be verified), 3.ANNOTATION_VERIFIED (the annotation of the page has been verified)"
    sql: ${TABLE}.ANNOTATION_STATUS ;;
  }

# CUSTOM FIELDS
# all additional attributes and measures which do not exist in BQ matching table
# adding a description is mandatory

  measure: count {
    type: count
    drill_fields: []
  }
}
