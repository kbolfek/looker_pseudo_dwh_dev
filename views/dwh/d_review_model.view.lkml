view: d_review_model {
  sql_table_name: `DWH.TBL_D_REVIEW_MODEL`
    ;;

  dimension: review_model {
    primary_key: yes
    type: string
    description: "Math task type"
    sql: ${TABLE}.REVIEW_MODEL ;;
  }

  dimension: review_model_description {
    type: string
    description: "Math task type"
    sql: ${TABLE}.REVIEW_MODEL_DESCRIPTION ;;
  }

# CUSTOM FIELDS
# all additional attributes and measures which do not exist in BQ matching table
# adding a description is mandatory

  measure: count {
    type: count
    drill_fields: []
  }
}
