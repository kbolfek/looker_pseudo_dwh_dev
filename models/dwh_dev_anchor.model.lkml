connection: "bq_photomath_dwh_dev"

# include all the views
include: "/views/**/*.view"

datagroup: photomath_dwh_dev_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

explore: d_book_anchor {}

explore: d_book_chapter_anchor {}

explore: d_book_group_anchor {}

explore: d_book_page_anchor {}

explore: d_book_publisher_anchor {}

explore: d_country_anchor {}

explore: d_math_area_anchor {}

explore: d_math_area_expert_anchor {}

explore: d_math_expert_anchor {}

explore: d_math_expert_activity_type_anchor {}

explore: d_math_expert_comment_anchor {}

explore: d_math_expert_job_anchor {}

explore: d_math_expert_job_type_anchor {}

explore: d_math_task_anchor {}

explore: d_math_task_type_anchor {}

explore: d_review_model_anchor {}

explore: d_topic_anchor {}

explore: f_math_expert_activity_anchor {}

explore: f_math_expert_qualification_anchor {}

explore: f_math_task_variation_example_anchor {}
