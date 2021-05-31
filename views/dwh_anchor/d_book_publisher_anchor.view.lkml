view: d_book_publisher_anchor {
  sql_table_name: `DWH.TBL_D_BOOK_PUBLISHER`
    ;;

  dimension: book_publisher_id {
    type: number
    description: "Surrogate key of a book publisher created by the source database"
    sql: ${TABLE}.BOOK_PUBLISHER_ID ;;
  }

  dimension: book_publisher_name {
    type: string
    description: "Name of the book publisher"
    sql: ${TABLE}.BOOK_PUBLISHER_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [book_publisher_name]
  }
}
