connection: "bq_photomath_dwh_dev"

# include all the views
#include: "/views/**/*.view"
include: "/views/dwh_anchor/*.view"

datagroup: photomath_dwh_dev_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

explore: d_book_anchor {hidden: yes}

explore: d_book_chapter_anchor {hidden: yes}

explore: d_book_group_anchor {hidden: yes}

explore: d_book_page_anchor {hidden: yes}

explore: d_book_publisher_anchor {hidden: yes}

explore: d_country_anchor {hidden: yes}

explore: d_math_area_anchor {hidden: yes}

explore: d_math_area_expert_anchor {hidden: yes}

explore: d_math_expert_anchor {hidden: yes}

explore: d_math_expert_activity_type_anchor {hidden: yes}

explore: d_math_expert_comment_anchor {hidden: yes}

explore: d_math_expert_job_anchor {hidden: yes}

explore: d_math_expert_job_type_anchor {hidden: yes}

explore: d_math_task_anchor {hidden: yes}

explore: d_math_task_type_anchor {hidden: yes}

explore: d_review_model_anchor {hidden: yes}

explore: d_topic_anchor {hidden: yes}

explore: f_math_expert_activity_anchor {hidden: yes}

explore: f_math_expert_qualification_anchor {hidden: yes}

explore: f_math_task_variation_example_anchor {hidden: yes}
