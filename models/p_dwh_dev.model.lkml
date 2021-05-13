connection: "bq_photomath_dwh_dev"

# include all the views
include: "/views/**/*.view"

datagroup: p_dwh_dev_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: p_dwh_dev_default_datagroup

explore: d_book {}

explore: d_book_chapter {}

explore: d_book_group {}

explore: d_book_page {}

explore: d_book_publisher {}

explore: d_country {}

explore: d_math_area {}

explore: d_math_area_expert {}

explore: d_math_expert {}

explore: d_math_expert_activity_type {}

explore: d_math_expert_comment {}

explore: d_math_expert_job {}

explore: d_math_expert_job_type {}

explore: d_math_task {}

explore: d_math_task_type {}

explore: d_review_model {}

explore: d_topic {}

explore: f_math_expert_activity {}

explore: f_math_expert_qualification {}

explore: f_math_task_variation_example {}
