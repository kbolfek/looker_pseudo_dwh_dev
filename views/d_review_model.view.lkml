view: d_review_model {
  sql_table_name: `DWH.TBL_D_REVIEW_MODEL`
    ;;

  dimension: review_model {
    type: string
    sql: ${TABLE}.REVIEW_MODEL ;;
  }

  dimension: review_model_description {
    type: string
    sql: ${TABLE}.REVIEW_MODEL_DESCRIPTION ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
