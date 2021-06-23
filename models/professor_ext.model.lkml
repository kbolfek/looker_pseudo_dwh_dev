connection: "bq_photomath_dwh_dev"

#include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/**/*.view.lkml"                 # include all views in this project

explore: professor_app_events {
  #explore properties
  label: "Professor Events"
  description: "Model containing the data related to Professor events and subscriptions"
  group_label: "Professor"

  #view properties
  from: ext_temp_professor_app_events
  view_label: "Events"

  join: event_params {
    from: ext_temp_professor_app_events__event_params
    view_label: "Events: Event Params"
    sql: LEFT JOIN UNNEST(${professor_app_events.event_params}) as event_params ;;
    relationship: one_to_many
  }

  join: user_properties {
    from: ext_temp_professor_app_events__user_properties
    view_label: "Events: User Properties"
    sql: LEFT JOIN UNNEST(${professor_app_events.user_properties}) as user_properties ;;
    relationship: one_to_many
  }

  join: professor_app_subscriptions {
    from: ext_professor_subscriptions
    view_label: "Professor Subscriptions"
    type: left_outer
    sql_on: ${professor_app_events.user_id} = ${professor_app_subscriptions.device_id} ;;
    relationship: many_to_many
  }

  join: dtbl_questions_sent_per_user {
    from: dtbl_questions_sent_per_user
    view_label: "Questions Sent per User"
    sql: LEFT JOIN dtbl_questions_sent_per_user ON ${professor_app_events.user_id} = ${dtbl_questions_sent_per_user.user_id} ;;
    relationship: many_to_one
  }
}

explore: professor_tasks {
  #explore properties
  group_label: "Professor"
  description: "Model containing backend data related to Professor tasks"

  #view properties
  from: ext_professor_oak_tasks

  #UNHIDE THIS AFTER SWITCHING TO PROD!
  #sql_always_where: ${task_created_timestamp_date} >= '2021-05-19' ;;
}

explore: professor_marketplace_turnaround_time {
  from: ext_professor_mktp_turnaround_time
  view_label: "Professor Turnaround Time"
  group_label: "Professor"
  description: "Model containing the data related to solving/reviewing Professor tasks on Marketplace"

}

explore: professor_subscriptions {
  hidden: yes
  from: ext_professor_subscriptions
  view_label: "Professor Subscriptions"
  description: "Model containing custom dimensions and subscriptions related to Professor subscriptions"
}
