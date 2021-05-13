view: d_expert_comment {
  sql_table_name: `DWH.TBL_D_EXPERT_COMMENT`
    ;;

  dimension: comment {
    type: string
    sql: ${TABLE}.COMMENT ;;
  }

  dimension: expert_comment_id {
    type: number
    sql: ${TABLE}.EXPERT_COMMENT_ID ;;
  }

  dimension: is_coloring_correct {
    type: yesno
    sql: ${TABLE}.IS_COLORING_CORRECT ;;
  }

  dimension: is_completesolvingprocedure_correct {
    type: yesno
    sql: ${TABLE}.IS_COMPLETESOLVINGPROCEDURE_CORRECT ;;
  }

  dimension: is_correctpmsolution_correct {
    type: yesno
    sql: ${TABLE}.IS_CORRECTPMSOLUTION_CORRECT ;;
  }

  dimension: is_inputdescriptionoutputform_correct {
    type: yesno
    sql: ${TABLE}.IS_INPUTDESCRIPTIONOUTPUTFORM_CORRECT ;;
  }

  dimension: is_language_correct {
    type: yesno
    sql: ${TABLE}.IS_LANGUAGE_CORRECT ;;
  }

  dimension: is_latex_correct {
    type: yesno
    sql: ${TABLE}.IS_LATEX_CORRECT ;;
  }

  dimension: is_solutionstep_correct {
    type: yesno
    sql: ${TABLE}.IS_SOLUTIONSTEP_CORRECT ;;
  }

  dimension: is_visualcontent_correct {
    type: yesno
    sql: ${TABLE}.IS_VISUALCONTENT_CORRECT ;;
  }

  dimension: math_area {
    type: string
    sql: ${TABLE}.MATH_AREA ;;
  }

  dimension: math_task_id {
    type: number
    sql: ${TABLE}.MATH_TASK_ID ;;
  }

  dimension: parent_enter_expert_job_id {
    type: number
    sql: ${TABLE}.PARENT_ENTER_EXPERT_JOB_ID ;;
  }

  dimension: review_expert_job_id {
    type: number
    sql: ${TABLE}.REVIEW_EXPERT_JOB_ID ;;
  }

  dimension: reviewer_math_expert_id {
    type: number
    sql: ${TABLE}.REVIEWER_MATH_EXPERT_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
