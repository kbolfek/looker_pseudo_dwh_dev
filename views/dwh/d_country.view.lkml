view: d_country {
  sql_table_name: `DWH.TBL_D_COUNTRY`
    ;;

  dimension: code_a2 {
    type: string
    description: "ISO 3166-1; Alpha-2 country code"
    map_layer_name: countries
    sql: ${TABLE}.CODE_A2 ;;
  }

  dimension: code_a3 {
    type: string
    description: "ISO 3166-1; Alpha-3 country code"
    map_layer_name: countries
    sql: ${TABLE}.CODE_A3 ;;
  }

  dimension: code_n1 {
    type: string
    description: "ISO 3166-1; Numeric-3 country code"
    map_layer_name: countries
    sql: ${TABLE}.CODE_N1 ;;
  }

  dimension: country_id {
    primary_key: yes
    type: number
    description: "Surrogate key of a country created by the source database"
    sql: ${TABLE}.COUNTRY_ID ;;
  }

  dimension: country_name {
    type: string
    description: "Name of the country"
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY_NAME ;;
  }

# CUSTOM FIELDS
# all additional attributes and measures which do not exist in BQ matching table
# adding a description is mandatory

  measure: count {
    type: count
    drill_fields: [country_name]
  }
}
