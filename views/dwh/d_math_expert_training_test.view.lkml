
view: d_math_expert_training_test {
  sql_table_name: `DWH.TBL_D_MATH_EXPERT_TRAINING_TEST`
    ;;

  dimension: math_expert_training_test_id {
    type: number
    description: "Surrogate key of a book created by the source database"
    sql: ${TABLE}.MATH_EXPERT_TRAINING_TEST_ID ;;
  }

  dimension: math_expert_training_test_type {
    type: string
    description: "Type of the test ('courseQuiz'/'teachnigSkill')"
    sql: ${TABLE}.MATH_EXPERT_TRAINING_TEST_TYPE ;;
  }

  dimension: title {
    type: string
    description: "Title of the test"
    sql: ${TABLE}.TITLE ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
