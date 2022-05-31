# The name of this view in Looker is "Vw Label Corrections Cache V1"
view: vw_label_corrections_cache_v1 {

  sql_table_name: `photomath-dwh-dev.TEMP.VW_label_corrections_cache_v1`
    ;;


  dimension: annotator_id {
    type: string
    sql: ${TABLE}.annotator_id ;;
  }

  dimension: annotator_name {
    type: string
    sql: ${TABLE}.annotator_name ;;
  }


  dimension_group: corrected {
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
    sql: ${TABLE}.corrected_at ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: is_verified {
    type: yesno
    sql: ${TABLE}.is_verified ;;
  }

  dimension: is_verifier_create {
    type: yesno
    sql: ${TABLE}.is_verifier_create ;;
  }

  dimension: is_verifier_delete {
    type: yesno
    sql: ${TABLE}.is_verifier_delete ;;
  }

  dimension: is_verifier_update {
    type: yesno
    sql: ${TABLE}.is_verifier_update ;;
  }

  dimension: is_waiting {
    type: yesno
    sql: ${TABLE}.is_waiting ;;
  }

  dimension: label_id {
    type: number
    sql: ${TABLE}.label_id ;;
  }

  dimension: object {
    type: string
    sql: ${TABLE}.object ;;
  }

  dimension: task_id {
    type: number
    sql: ${TABLE}.task_id ;;
  }

  dimension: verifier_id {
    type: string
    sql: ${TABLE}.verifier_id ;;
  }

  dimension: verifier_name {
    type: string
    sql: ${TABLE}.verifier_name ;;
  }

}
