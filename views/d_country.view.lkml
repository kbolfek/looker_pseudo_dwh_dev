view: d_country {
  sql_table_name: `DWH.TBL_D_COUNTRY`
    ;;

  dimension: code_a2 {
    type: string
    sql: ${TABLE}.CODE_A2 ;;
  }

  dimension: code_a3 {
    type: string
    sql: ${TABLE}.CODE_A3 ;;
  }

  dimension: code_n1 {
    type: string
    sql: ${TABLE}.CODE_N1 ;;
  }

  dimension: country_id {
    type: number
    sql: ${TABLE}.COUNTRY_ID ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.COUNTRY_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [country_name]
  }
}
