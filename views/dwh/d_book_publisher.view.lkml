view: d_book_publisher {
  sql_table_name: `DWH.TBL_D_BOOK_PUBLISHER`
    ;;

  dimension: book_publisher_id {
    primary_key: yes
    type: number
    description: "Surrogate key of a book publisher created by the source database"
    sql: ${TABLE}.BOOK_PUBLISHER_ID ;;
  }

  dimension: book_publisher_name {
    type: string
    description: "Name of the book publisher"
    sql: ${TABLE}.BOOK_PUBLISHER_NAME ;;
  }

# CUSTOM FIELDS
# all additional attributes and measures which do not exist in BQ matching table
# adding a description is mandatory

  measure: count {
    type: count
    drill_fields: [book_publisher_name]
  }
}
