view: d_book_group {
  sql_table_name: `DWH.TBL_D_BOOK_GROUP`
    ;;

  dimension: book_group_id {
    type: number
    sql: ${TABLE}.BOOK_GROUP_ID ;;
  }

  dimension: book_group_name {
    type: string
    sql: ${TABLE}.BOOK_GROUP_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [book_group_name]
  }
}
