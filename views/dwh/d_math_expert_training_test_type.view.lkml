
view: d_math_expert_training_test_type {

  sql_table_name: `DWH.TBL_D_MATH_EXPERT_TRAINING_TEST_TYPE`
    ;;


  dimension: math_expert_training_test_type {
    type: string
    description: "Type of the training test ('courseQuiz'/'teachingSkill')"
    sql: ${TABLE}.MATH_EXPERT_TRAINING_TEST_TYPE ;;
  }

  dimension: math_expert_training_test_type_description {
    type: string
    description: "Description of training test type"
    sql: ${TABLE}.MATH_EXPERT_TRAINING_TEST_TYPE_DESCRIPTION ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
