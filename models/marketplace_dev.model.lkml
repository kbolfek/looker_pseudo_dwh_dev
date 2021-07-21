connection: "bq_photomath_dwh_dev"

#include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard
include: "/dashboards/test_1.dashboard.lookml"

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#

explore: math_expert_activity {
  hidden: yes
  description: "Model containing all the data related to math experts' activities on marketplace"
  label:"Math Experts: Activities"

  from: f_math_expert_activity

  join: math_expert_job {
    from: d_math_expert_job
    type: left_outer
    relationship: many_to_many
    sql_on: ${math_expert_activity.math_expert_job_id} = ${math_expert_job.math_expert_job_id} ;;
  }

  join: math_task {
    from: d_math_task
    type: left_outer
    relationship: many_to_one
    sql_on: ${math_expert_activity.math_task_id} = ${math_task.math_task_id} ;;
  }

  join: topic {
    from: d_topic
    type: left_outer
    relationship: many_to_one
    sql_on: ${math_expert_job.topic_id} = ${topic.topic_id} ;;
  }

  join: math_expert {
    from: d_math_expert
    type: left_outer
    relationship: one_to_many
    sql_on: ${math_expert_activity.math_expert_id} = ${math_expert.math_expert_id};;
  }

  join: country {
    from: d_country
    type:  left_outer
    relationship: many_to_one
    sql_on: ${math_expert.country_id} = ${country.country_id} ;;
  }

  join: math_area_expert {
    from: d_math_area_expert
    type: left_outer
    relationship: one_to_many
    sql_on: ${math_expert.math_expert_id} = ${math_area_expert.math_expert_id} ;;
  }

  join: math_expert_qualification {
    from: f_math_expert_qualification
    type: left_outer
    relationship: many_to_many
    sql_on: ${math_expert.math_expert_id} = ${math_expert_qualification.math_expert_id} ;;
  }

  join: math_expert_comment {
    from: d_math_expert_comment
    type: left_outer
    relationship: many_to_many
    sql_on:  ${math_task.math_task_id} = ${math_expert_comment.math_task_id} ;;
  }
  join: math_task_type {
    from: d_math_task_type
    type: left_outer
    relationship: many_to_one
    sql_on: ${math_task.math_task_type} = ${math_task_type.math_task_type} ;;
  }

  join: review_model {
    from: d_review_model
    type: left_outer
    relationship: many_to_one
    sql_on: ${math_expert_job.review_model} = ${review_model.review_model} ;;
  }

  join: math_task_example {
    from: f_math_task_variation_example
    type: left_outer
    relationship: many_to_many
    sql_on: ${math_task.math_task_id} = ${math_task_example.math_task_example_id};;
  }

  join: math_task_variation {
    from: f_math_task_variation_example
    type: left_outer
    relationship: many_to_many
    sql_on: ${math_task.math_task_id} = ${math_task_variation.math_task_variation_id};;
  }

  join: math_task_duration {
    from: dtbl_math_task_duration
    type: left_outer
    relationship: one_to_one
    sql_on: ${math_task.math_task_id} = ${math_task_duration.math_task_id}  ;;
  }
}
explore: math_task {
  hidden: yes
  description: "Model containing all the data related to processed math books"
  label: "Books"
  from: d_math_task

  join: book {
    from: d_book
    type: inner
    relationship: many_to_one
    sql_on: ${math_task.book_id} = ${book.book_id} ;;
  }

  join: book_group {
    from: d_book_group
    type: left_outer
    relationship: one_to_one
    sql_on: ${book.book_group_id} = ${book_group.book_group_id};;
  }

  join: book_chapter {
    from: d_book_chapter
    type: left_outer
    relationship: one_to_many
    sql_on: ${book.book_id} = ${book_chapter.book_chapter_id} ;;
  }

  join: d_book_page {
    from: d_book_page
    type: left_outer
    relationship: one_to_many
    sql_on: ${book_chapter.book_chapter_id} = ${d_book_page.book_chapter_id};;
  }

}

explore: math_expert_qualification {
  hidden: yes
  description: "Model containing all the data related to math experts"
  label: "Math Experts"
  from: ext_f_math_expert_qualification

  join: math_expert {
    from: d_math_expert
    type: left_outer
    sql_on: ${math_expert_qualification.math_expert_id} = ${math_expert.math_expert_id} ;;
    relationship: many_to_one
  }

  join: country {
    from: d_country
    type:  left_outer
    relationship: many_to_one
    sql_on: ${math_expert.country_id} = ${country.country_id} ;;
  }

  join: math_area_expert {
    from: d_math_area_expert
    type: left_outer
    relationship: one_to_many
    sql_on: ${math_expert.math_expert_id} = ${math_area_expert.math_expert_id} ;;
  }

}
