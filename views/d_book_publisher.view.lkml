view: d_book_publisher {
  sql_table_name: `DWH.TBL_D_BOOK_PUBLISHER`
    ;;

  dimension: book_publisher_id {
    type: number
    sql: ${TABLE}.BOOK_PUBLISHER_ID ;;
  }

  dimension: book_publisher_name {
    type: string
    sql: ${TABLE}.BOOK_PUBLISHER_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [book_publisher_name]
  }
}
