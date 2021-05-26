connection: "bq_photomath_dwh_dev"

#include: "/views/*.view.lkml"              # include all views in the views/ folder in this project
include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard


explore: tbl_dev_events {
  label: "Professor Events"
  description: "This model is created for Professor feature analysis"
  group_label: "Professor"

  view_label: "Events"
  join: event_params {
    from: tbl_dev_events__event_params
    view_label: "Event Params"
    sql: LEFT JOIN UNNEST(${tbl_dev_events.event_params}) as event_params ;;
    relationship: one_to_many
  }

  join: user_properties {
    from: tbl_dev_events__user_properties
    view_label: "User Properties"
    sql: LEFT JOIN UNNEST(${tbl_dev_events.user_properties}) as user_properties ;;
    relationship: one_to_many
  }

  sql_always_where:
    lower(${event_name}) like '%professor%' --1. all Professor related events
    or ${event_name} = 'user_engagement' --2. user_engagement events represents app opening event (aka session started)
    or (
      ${event_name} in (
      'PopupPaywallShown',
      'PopupPaywallSubscribeClicked',
      'TrialStarted'
        )
      and ( ${event_params.key} = 'Location' and ${event_params.value__string_value} = 'Professor' )
      ) --3. paywall and trial events which have Professor parameters
    and ${event_params.key} not in (
      'ga_session_number',
      'MaxPageReached',
      'firebase_screen_class',
      'firebase_screen_id',
      'firebase_event_origin',
      'engaged_session_event'
      ) --excluding unnecessary events from scope
    and ${user_properties.professor_user_cohort} in ('variant1', 'variant2','variant3')
  ;;
}

explore: tbl_mongodb_task {
  hidden: yes
  label: "Professor Tasks"
  view_label: "Tasks"

  join: tbl_mongodb_task__steps {
    view_label: "Task.Steps"
    sql: LEFT JOIN UNNEST(${tbl_mongodb_task.steps}) as tbl_mongodb_task__steps ;;
    relationship: one_to_many
  }

  join: tbl_mongodb_task__steps__reason {
    view_label: "Task.Steps Reason"
    sql: LEFT JOIN UNNEST(${tbl_mongodb_task__steps.reason}) as tbl_mongodb_task__steps__reason ;;
    relationship: one_to_many
  }

}
