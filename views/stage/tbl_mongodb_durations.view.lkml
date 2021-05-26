view: tbl_mongodb_durations {
  sql_table_name: `photomath-dwh-dev.STAGE.TBL_MONGODB_DURATIONS`
    ;;

  dimension: _id__oid {
    type: string
    sql: ${TABLE}._id.oid ;;
    group_label: "ID"
    group_item_label: "Oid"
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.duration ;;
  }

  dimension_group: recorded_ {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.recorded.date ;;
    #X# Invalid LookML inside "dimension_group": {"group_label":null}
    group_item_label: "Recorded"
  }

  dimension: transition__from {
    type: string
    sql: ${TABLE}.transition.`from` ;;
    group_label: "Transition"
    group_item_label: "From"
  }

  dimension: transition__to {
    type: string
    sql: ${TABLE}.transition.`to` ;;
    group_label: "Transition"
    group_item_label: "To"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
