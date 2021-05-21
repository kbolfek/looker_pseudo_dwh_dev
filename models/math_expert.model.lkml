connection: "bq_photomath_dwh_dev"

#include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#

explore: math_expert_activity {
  from: f_math_expert_activity

  label:"Marketplace Math Experts"
  join: math_expert_job {
    from: d_math_expert_job
    type: left_outer
    relationship: many_to_one
    sql_on: ${math_expert_activity.expert_job_id} = ${math_expert_job.math_expert_job_id} ;;
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
}
