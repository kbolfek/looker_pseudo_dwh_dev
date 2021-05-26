view: d_book_group {
  sql_table_name: `DWH.TBL_D_BOOK_GROUP`
    ;;

  dimension: book_group_id {
    primary_key: yes
    type: number
    description: "Surrogate key of a book group created by the source database"
    sql: ${TABLE}.BOOK_GROUP_ID ;;
  }

  dimension: book_group_name {
    type: string
    description: "Book group name"
    sql: ${TABLE}.BOOK_GROUP_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [book_group_name]
  }
}
