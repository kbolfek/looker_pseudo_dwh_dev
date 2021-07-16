include: "/views/dwh/*.view"

view: ext_f_math_expert_qualification {
  extends: [f_math_expert_qualification]

  dimension: status {
    html: {{ status | capitalize | replace: "_", " " }};;
  }

  dimension: status_rank {
    type: number
    sql:
    CASE
        WHEN ${status} = 'NONE' THEN 0
        WHEN ${status} = 'QUALIFICATION_OK' THEN 1
        WHEN ${status} = 'METHODICS_OK' THEN 2
        WHEN ${status} = 'FINAL_ENABLED' THEN 3
        WHEN ${status} = 'FINAL_COMPLETED' THEN 4
        WHEN ${status} = 'FINAL_SCORED' THEN 5
        WHEN ${status} = 'QUALIFIED' THEN 6
        WHEN ${status} = 'REVIEW_TRAINING_ENABLED' THEN 7
        WHEN ${status} = 'REVIEW_FINAL_ENABLED' THEN 8
        WHEN ${status} = 'REVIEW_FINAL_COMPLETED' THEN 9
        WHEN ${status} = 'REVIEW_FINAL_SCORED' THEN 10
        WHEN ${status} = 'REVIEW_QUALIFIED' THEN 11
    END
    ;;
  }

  dimension: status_group {
    type: string
    sql:
    CASE
        WHEN ${status} = 'NONE' THEN 'Qualification started'
        WHEN ${status} like '%FAILED' THEN 'Failed'
        WHEN ${status} = 'QUALIFICATION_OK' THEN 'Qualification OK'
        WHEN ${status} = 'METHODICS_OK' THEN 'Teaching skills OK'
        WHEN ${status} = 'FINAL_ENABLED' THEN 'Solve training OK'
        WHEN ${status} IN ('FINAL_COMPLETED', 'FINAL_SCORED') THEN 'Solve test completed'
        WHEN ${status} = 'QUALIFIED' THEN 'Solve qualified'
        WHEN ${status} = 'REVIEW_TRAINING_ENABLED' THEN 'Review training started'
        WHEN ${status} = 'REVIEW_FINAL_ENABLED' THEN 'Review training OK'
        WHEN ${status} IN ('REVIEW_FINAL_COMPLETED', 'REVIEW_FINAL_SCORED') THEN 'Review test completed'
        WHEN ${status} = 'REVIEW_QUALIFIED' THEN 'Review qualified'
        ELSE 'Other'
    END
    ;;
  }

  measure: number_of_experts {
    type: count_distinct
    sql: ${math_expert_id} ;;
    drill_fields: [drill_set1*, drill_set2*]
  }

  set: drill_set1 {
    fields: [status, status_change_dt_date]
  }

  set: drill_set2 {
    fields: [status, previous_status]
  }
}
