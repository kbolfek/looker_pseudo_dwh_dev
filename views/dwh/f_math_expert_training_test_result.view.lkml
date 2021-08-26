view: f_math_expert_training_test_result {

  sql_table_name: `DWH.F_MATH_EXPERT_TRAINING_TEST_RESULT`
    ;;

  dimension: correct_answer_qty {
    type: number
    description: "Number of correct answers in test."
    sql: ${TABLE}.CORRECT_ANSWER_QTY ;;
  }


  dimension_group: end_dt {
    type: time
    description: "Date and time of when the math expert finished the test."
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.END_DT ;;
  }

  dimension: is_graded {
    type: yesno
    description: "Number of total answers in test."
    sql: ${TABLE}.IS_GRADED ;;
  }

  dimension: is_passed {
    type: yesno
    description: "Is test successfuly passed or not."
    sql: ${TABLE}.IS_PASSED ;;
  }

  dimension: math_area {
    type: string
    description: "Math area the test covers."
    sql: ${TABLE}.MATH_AREA ;;
  }

  dimension: math_expert_id {
    type: number
    description: "Foreign key to D_MATH_EXPERT. ID of the math expert taking the test."
    sql: ${TABLE}.MATH_EXPERT_ID ;;
  }

  dimension: math_expert_reviewer_id {
    type: number
    description: "Foreign key to D_MATH_EXPERT. Points to ID of an internal math expert who reviewed the test."
    sql: ${TABLE}.MATH_EXPERT_REVIEWER_ID ;;
  }

  dimension: math_expert_training_test_id {
    type: number
    description: "Foreign key to D_MATH_EXPERT_TRAINING_TEST. ID of the test."
    sql: ${TABLE}.MATH_EXPERT_TRAINING_TEST_ID ;;
  }

  dimension: math_expert_training_test_result_id {
    type: number
    description: "Surrogate key of a test result created by the source database."
    sql: ${TABLE}.MATH_EXPERT_TRAINING_TEST_RESULT_ID ;;
  }

  dimension_group: review_dt {
    type: time
    description: "Date and time of when the expert reviewer finished the test review."
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.REVIEW_DT ;;
  }

  dimension_group: start_dt {
    type: time
    description: "Date and time of when the math expert started the test."
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.START_DT ;;
  }

  dimension: total_answer_qty {
    type: number
    description: "Surrogate key of a test result created by the source database."
    sql: ${TABLE}.TOTAL_ANSWER_QTY ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: []
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_correct_answer_qty {
    type: sum
    hidden: yes
    sql: ${correct_answer_qty} ;;
  }

  measure: average_correct_answer_qty {
    type: average
    hidden: yes
    sql: ${correct_answer_qty} ;;
  }

  measure: total_total_answer_qty {
    type: sum
    hidden: yes
    sql: ${total_answer_qty} ;;
  }

  measure: average_total_answer_qty {
    type: average
    hidden: yes
    sql: ${total_answer_qty} ;;
  }
}
