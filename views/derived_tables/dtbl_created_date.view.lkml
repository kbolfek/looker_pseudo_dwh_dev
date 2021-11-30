view: dtbl_created_date {
  derived_table: {
    sql: SELECT
        CAST(DATE_UNNESTED AS DATE) AS CREATED_DATE
      FROM UNNEST(GENERATE_DATE_ARRAY('2021-01-01', '2021-12-31')) DATE_UNNESTED
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: created_date {
    type: date
    datatype: date
    sql: ${TABLE}.CREATED_DATE ;;
  }

  set: detail {
    fields: [created_date]
  }
}
