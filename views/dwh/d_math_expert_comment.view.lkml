view: d_math_expert_comment {
  sql_table_name: `DWH.TBL_D_MATH_EXPERT_COMMENT`
    ;;

  dimension: comment {
    type: string
    description: "Content of the comment"
    sql: ${TABLE}.COMMENT ;;
  }

  dimension: is_coloring_correct {
    type: yesno
    description: "Indicates whether one of the reasons for existance of the comment is violating Coloring rule"
    sql: ${TABLE}.IS_COLORING_CORRECT ;;
  }

  dimension: is_completesolvingprocedure_correct {
    type: yesno
    description: "Indicates whether one of the reasons for existance of the comment is violating Complete Solving Procedure rule"
    sql: ${TABLE}.IS_COMPLETESOLVINGPROCEDURE_CORRECT ;;
  }

  dimension: is_correctpmsolution_correct {
    type: yesno
    description: "Indicates whether one of the reasons for existance of the comment is violating Correct PM Solution rule"
    sql: ${TABLE}.IS_CORRECTPMSOLUTION_CORRECT ;;
  }

  dimension: is_inputdescriptionoutputform_correct {
    type: yesno
    description: "Indicates whether one of the reasons for existance of the comment is violating Input Description Output Form rule"
    sql: ${TABLE}.IS_INPUTDESCRIPTIONOUTPUTFORM_CORRECT ;;
  }

  dimension: is_language_correct {
    type: yesno
    description: "Indicates whether one of the reasons for existance of the comment is violating Language rule"
    sql: ${TABLE}.IS_LANGUAGE_CORRECT ;;
  }

  dimension: is_latex_correct {
    type: yesno
    description: "Indicates whether one of the reasons for existance of the comment is violating Latex rule"
    sql: ${TABLE}.IS_LATEX_CORRECT ;;
  }

  dimension: is_solutionstep_correct {
    type: yesno
    description: "Indicates whether one of the reasons for existance of the comment is violating Solution Step rule"
    sql: ${TABLE}.IS_SOLUTIONSTEP_CORRECT ;;
  }

  dimension: is_visualcontent_correct {
    type: yesno
    description: "Indicates whether one of the reasons for existance of the comment is violating Visual Content rule"
    sql: ${TABLE}.IS_VISUALCONTENT_CORRECT ;;
  }

  dimension: math_area {
    type: string
    description: "Math area the task and job belong to"
    sql: ${TABLE}.MATH_AREA ;;
  }

  dimension: math_expert_comment_id {
    primary_key: yes
    type: number
    description: "Surrogate key of a comment created by the source database"
    sql: ${TABLE}.MATH_EXPERT_COMMENT_ID ;;
  }

  dimension: math_task_id {
    type: number
    description: "Foreign key to table D_MATH_TASK. Task id job belongs to"
    sql: ${TABLE}.MATH_TASK_ID ;;
  }

  dimension: parent_enter_expert_job_id {
    type: number
    description: "Foreign key to table D_EXPERT_JOB. Enter (job type = enter) job id which this comment relates to"
    sql: ${TABLE}.PARENT_ENTER_EXPERT_JOB_ID ;;
  }

  dimension: review_expert_job_id {
    type: number
    description: "Foreign key to table D_EXPERT_JOB. Id of the review job during which the comment was created."
    sql: ${TABLE}.REVIEW_EXPERT_JOB_ID ;;
  }

  dimension: reviewer_math_expert_id {
    type: number
    description: "Foreign key to table D_MATH_EXPERT. Math expert - reviewer - person who added the comment"
    sql: ${TABLE}.REVIEWER_MATH_EXPERT_ID ;;
  }

# CUSTOM FIELDS
# all additional attributes and measures which do not exist in BQ matching table
# adding a description is mandatory

  measure: count {
    type: count
    drill_fields: []
  }
}
