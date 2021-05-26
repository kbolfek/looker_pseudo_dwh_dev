view: d_country {
  sql_table_name: `DWH.TBL_D_COUNTRY`
    ;;

  dimension: code_a2 {
    type: string
    description: "ISO 3166-1; Alpha-2 country code"
    sql: ${TABLE}.CODE_A2 ;;
  }

  dimension: code_a3 {
    type: string
    description: "ISO 3166-1; Alpha-3 country code"
    sql: ${TABLE}.CODE_A3 ;;
  }

  dimension: code_n1 {
    type: string
    description: "ISO 3166-1; Numeric-3 country code"
    sql: ${TABLE}.CODE_N1 ;;
  }

  dimension: country_id {
    type: number
    description: "Surrogate key of a country created by the source database"
    sql: ${TABLE}.COUNTRY_ID ;;
  }

  dimension: country_name {
    type: string
    description: "Name of the country"
    sql: ${TABLE}.COUNTRY_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [country_name]
  }
}
