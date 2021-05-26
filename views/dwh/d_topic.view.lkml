view: d_topic {
  sql_table_name: `DWH.TBL_D_TOPIC`
    ;;

  dimension: field {
    type: string
    sql: ${TABLE}.FIELD ;;
  }

  dimension: is_promo {
    type: yesno
    sql: ${TABLE}.IS_PROMO ;;
  }

  dimension: math_area {
    type: string
    description: "Math area of the topic"
    sql: ${TABLE}.MATH_AREA ;;
  }

  dimension: price {
    type: number
    description: "Price for the topic"
    sql: ${TABLE}.PRICE ;;
  }

  dimension: topic_id {
    primary_key: yes
    type: number
    description: "Surrogate key of a topic created by the source database"
    sql: ${TABLE}.TOPIC_ID ;;
  }

  dimension: topic_type {
    type: string
    sql: ${TABLE}.TOPIC_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
