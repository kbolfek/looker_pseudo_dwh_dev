connection: "bq_photomath_dwh_dev"

# include all the views
#include: "/views/**/*.view"
include: "/views/dwh/*.view"

datagroup: photomath_dwh_dev_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

explore: d_book {hidden: yes}

explore: d_book_chapter {hidden: yes}

explore: d_book_group {hidden: yes}

explore: d_book_page {hidden: yes}

explore: d_book_publisher {hidden: yes}

explore: d_country {hidden: yes}

explore: d_math_area {hidden: yes}

explore: d_math_area_expert {hidden: yes}

explore: d_math_expert{hidden: yes}

explore: d_math_expert_activity_type {hidden: yes}

explore: d_math_expert_comment {hidden: yes}

explore: d_math_expert_job {hidden: yes}

explore: d_math_expert_job_type{hidden: yes}

explore: d_math_expert_job_mode{hidden: yes}

explore: d_math_expert_job_class{hidden: yes}

explore: d_math_task {hidden: yes}

explore: d_math_task_type {hidden: yes}

explore: d_review_model {hidden: yes}

explore: d_topic {hidden: yes}

explore: f_math_expert_activity {hidden: yes}

explore: f_math_expert_qualification {hidden: yes}

explore: f_math_task_variation_example {hidden: yes}
