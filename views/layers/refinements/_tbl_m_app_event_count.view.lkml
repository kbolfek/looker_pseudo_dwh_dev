include: "/views/dwh/*.view"

view: +tbl_m_app_event_count {

  dimension: event_country_name {
    map_layer_name: countries
  }

  dimension_group: event_client_logged {
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      day_of_week
    ]
  }

  dimension_group: installation_to_event_logged_date_duration {
    type: duration
    sql_start: ${event_client_logged_date} ;;
    sql_end: ${device_installation_dt_date} ;;
    intervals: [
      day,
      week,
      month,
      year
      ]
  }

  measure: total_number_of_installs {
    group_label: "Users"
    description: "Number of app installs (including reinstalls)"
    type: count_distinct
    sql: ${installation_id} ;;
    drill_fields: [event_country_name, total_number_of_installs]
  }

  measure: total_number_of_users {
    group_label: "Users"
    description: "Number of users (counting unique device IDs)"
    type: count_distinct
    sql: ${device_id} ;;
    value_format_name: decimal_0
  }

  measure: total_number_of_active_users {
    group_label: "Users"
    description: "Number of users with the app time higher than 0"
    type: count_distinct
    sql: ${device_id} ;;
    filters: [event_app_time_qty: ">0"]
  }

  measure: total_number_of_scanned_problems {
    group_label: "Event Aggregates"
    description: "How many times was problem scanned in app by user"
    type: sum
    sql: (${event_camera_result_show_qty} + ${event_camera_qty}) ;;
  }

  measure: total_number_of_typed_problems {
    group_label: "Event Aggregates"
    description: "How many times was problem typed in app by user"
    type: sum
    sql: ${event_editor_result_show_qty} ;;
  }

  measure: total_user_engagement_events {
    group_label: "Event Aggregates"
    description: "Total number of user engagement events"
    type: sum
    sql: ${event_user_engagement_qty} ;;
  }

  measure: number_of_active_users_in_week_0 {
    type: count_distinct
    sql: ${device_id};;
    filters: [
      event_app_time_qty: ">0",
      weeks_installation_to_event_logged_date_duration: "0"
      ]
  }



# # ALVARO's CONTENT
# #----------------------------------------------------------------------------------------
# # CUSTOM MEASURES

#   measure: total_device_user_engagement_installation_cohort {
#     type: number
#     hidden: no
#     sql: MAX(${total_device_user_engagement_qty}) OVER (PARTITION BY ${first_touch_year_week}) ;;
#   }


# #----------------------------------------------------------------------------------------
# # CUSTOM PARAMETER EVENTS
#   parameter: timeframe_picker {
#     label: "Time Granularity"
#     default_value: "week"
#     type: string
#     allowed_value: {
#       label: "Week"
#       value: "week"
#     }
#     allowed_value: {
#       label: "Day"
#       value: "day"
#     }
#     allowed_value: {
#       label: "Month"
#       value: "month"
#     }
#     allowed_value: {
#       label: "Year"
#       value: "year"
#     }
#   }

#   dimension: time_dimension {
#     label_from_parameter: timeframe_picker
#     type: string
#     required_fields: [timeframe_picker]
#     sql:
#     CASE
#       WHEN {% parameter timeframe_picker %} = 'week' THEN CAST(${event_server_logged_week} as String)
#       WHEN {% parameter timeframe_picker %} = 'day' THEN CAST(${event_server_logged_date} as String)
#       WHEN {% parameter timeframe_picker %} = 'month' THEN CAST(${event_server_logged_month} as String)
#       WHEN {% parameter timeframe_picker %} = 'year' THEN CAST(${event_server_logged_year} as String)
#     END ;;
#   }

#   parameter: selected_event {
#     label: "Select Event Name"
#     default_value: "user_engagement"
#     type: string
#     allowed_value: {
#       label: "UserEngagement"
#       value: "user_engagement"
#     }
#     allowed_value: {
#       label: "AddTextbookToFavorites"
#       value: "add_textbook_to_favorites"
#     }
#     allowed_value: {
#       label: "AnimationClosed"
#       value: "animation_closed"
#     }
#     allowed_value: {
#       label: "BookpointResultShow"
#       value: "bookpoint_result_show"
#     }
#     allowed_value: {
#       label: "PlusMenuClick"
#       value: "plus_menu_click"
#     }
#     allowed_value: {
#       label: "SolutionShow"
#       value: "solution_show"
#     }
#     allowed_value: {
#       label: "SolutionButtonClick"
#       value: "solution_button_click"
#     }
#     allowed_value: {
#       label: "AnimationPlayed"
#       value: "animation_played"
#     }
#     allowed_value: {
#       label: "WhyClick"
#       value: "why_click"
#     }
#     allowed_value: {
#       label: "StepHowToClick"
#       value: "step_how_to_click"
#     }
#     allowed_value: {
#       label: "CameraResultShow"
#       value: "camera_result_show"
#     }
#     allowed_value: {
#       label: "EditorResultShow"
#       value: "editor_result_show"
#     }
#     allowed_value: {
#       label: "NumberOfSolvables"
#       value: "number_of_solvables"
#     }
#   }

#   measure: count_device_selected_event {
#     label_from_parameter: selected_event
#     type: number
#     required_fields: [selected_event]
#     sql:
#       CASE
#         WHEN {% parameter selected_event %} = 'user_engagement' THEN ${total_device_user_engagement_qty}
#         WHEN {% parameter selected_event %} = 'add_textbook_to_favorites' THEN ${total_device_add_textbook_to_favorites_qty}
#         WHEN {% parameter selected_event %} = 'animation_closed' THEN ${total_device_animation_closed_qty}
#         WHEN {% parameter selected_event %} = 'bookpoint_result_show' THEN ${total_device_bookpoint_result_show_qty}
#         WHEN {% parameter selected_event %} = 'plus_menu_click' THEN ${total_device_plus_menu_click_qty}
#         WHEN {% parameter selected_event %} = 'solution_show' THEN ${total_device_solution_show_qty}
#         WHEN {% parameter selected_event %} = 'solution_button_click' THEN ${total_device_solution_button_click_qty}
#         WHEN {% parameter selected_event %} = 'animation_played' THEN ${total_device_animation_played_qty}
#         WHEN {% parameter selected_event %} = 'why_click' THEN ${total_device_why_click_qty}
#         WHEN {% parameter selected_event %} = 'step_how_to_click' THEN ${total_event_step_how_to_click_qty}
#         WHEN {% parameter selected_event %} = 'camera_result_show' THEN ${total_device_camera_result_show_qty}
#         WHEN {% parameter selected_event %} = 'editor_result_show' THEN ${total_device_editor_result_show_qty}
#         WHEN {% parameter selected_event %} = 'number_of_solvables' THEN ${total_device_number_of_solvables_qty}

#       END
#     ;;
#   }

#   measure: count_event_selected_event {
#     label_from_parameter: selected_event
#     type: number
#     required_fields: [selected_event]
#     sql:
#       CASE
#         WHEN {% parameter selected_event %} = 'user_engagement' THEN ${total_event_user_engagement_qty}
#         WHEN {% parameter selected_event %} = 'add_textbook_to_favorites' THEN ${total_event_add_textbook_to_favorites_qty}
#         WHEN {% parameter selected_event %} = 'animation_closed' THEN ${total_event_animation_closed_qty}
#         WHEN {% parameter selected_event %} = 'bookpoint_result_show' THEN ${total_event_bookpoint_result_show_qty}
#         WHEN {% parameter selected_event %} = 'plus_menu_click' THEN ${total_event_plus_menu_click_qty}
#         WHEN {% parameter selected_event %} = 'solution_show' THEN ${total_event_solution_show_qty}
#         WHEN {% parameter selected_event %} = 'solution_button_click' THEN ${total_event_solution_button_click_qty}
#         WHEN {% parameter selected_event %} = 'animation_played' THEN ${total_event_animation_played_qty}
#         WHEN {% parameter selected_event %} = 'why_click' THEN ${total_event_why_click_qty}
#         WHEN {% parameter selected_event %} = 'step_how_to_click' THEN ${total_event_step_how_to_click_qty}
#         WHEN {% parameter selected_event %} = 'camera_result_show' THEN ${total_event_camera_result_show_qty}
#         WHEN {% parameter selected_event %} = 'editor_result_show' THEN ${total_event_editor_result_show_qty}
#         WHEN {% parameter selected_event %} = 'number_of_solvables' THEN ${total_event_camera_result_show_qty} + ${total_event_editor_result_show_qty}

#       END
#     ;;
#   }
#   measure: event_per_device_selected_event {
#     type: number
#     required_fields: [selected_event]
#     sql: ${count_event_selected_event}/${count_device_selected_event} ;;
#     value_format: "0.00"
#   }

#   parameter: selected_event_2 {
#     label: "Select Event Name 2"
#     default_value: "user_engagement"
#     type: string
#     allowed_value: {
#       label: "UserEngagement"
#       value: "user_engagement"
#     }
#     allowed_value: {
#       label: "AddTextbookToFavorites"
#       value: "add_textbook_to_favorites"
#     }
#     allowed_value: {
#       label: "AnimationClosed"
#       value: "animation_closed"
#     }
#     allowed_value: {
#       label: "BookpointResultShow"
#       value: "bookpoint_result_show"
#     }
#     allowed_value: {
#       label: "PlusMenuClick"
#       value: "plus_menu_click"
#     }
#     allowed_value: {
#       label: "SolutionShow"
#       value: "solution_show"
#     }
#     allowed_value: {
#       label: "SolutionButtonClick"
#       value: "solution_button_click"
#     }
#     allowed_value: {
#       label: "AnimationPlayed"
#       value: "animation_played"
#     }
#     allowed_value: {
#       label: "WhyClick"
#       value: "why_click"
#     }
#     allowed_value: {
#       label: "StepHowToClick"
#       value: "step_how_to_click"
#     }
#     allowed_value: {
#       label: "CameraResultShow"
#       value: "camera_result_show"
#     }
#     allowed_value: {
#       label: "EditorResultShow"
#       value: "editor_result_show"
#     }
#     allowed_value: {
#       label: "NumberOfSolvables"
#       value: "number_of_solvables"
#     }

#   }

#   measure: count_device_selected_event_2 {
#     label_from_parameter: selected_event_2
#     type: number
#     required_fields: [selected_event_2]
#     sql:
#       CASE
#         WHEN {% parameter selected_event_2 %} = 'user_engagement' THEN ${total_device_user_engagement_qty}
#         WHEN {% parameter selected_event_2 %} = 'add_textbook_to_favorites' THEN ${total_device_add_textbook_to_favorites_qty}
#         WHEN {% parameter selected_event_2 %} = 'animation_closed' THEN ${total_device_animation_closed_qty}
#         WHEN {% parameter selected_event_2 %} = 'bookpoint_result_show' THEN ${total_device_bookpoint_result_show_qty}
#         WHEN {% parameter selected_event_2 %} = 'plus_menu_click' THEN ${total_device_plus_menu_click_qty}
#         WHEN {% parameter selected_event_2 %} = 'solution_show' THEN ${total_device_solution_show_qty}
#         WHEN {% parameter selected_event_2 %} = 'solution_button_click' THEN ${total_device_solution_button_click_qty}
#         WHEN {% parameter selected_event_2 %} = 'animation_played' THEN ${total_device_animation_played_qty}
#         WHEN {% parameter selected_event_2 %} = 'why_click' THEN ${total_device_why_click_qty}
#         WHEN {% parameter selected_event_2 %} = 'step_how_to_click' THEN ${total_device_step_how_to_click_qty}
#         WHEN {% parameter selected_event_2 %} = 'camera_result_show' THEN ${total_device_camera_result_show_qty}
#         WHEN {% parameter selected_event_2 %} = 'editor_result_show' THEN ${total_device_editor_result_show_qty}
#         WHEN {% parameter selected_event_2 %} = 'number_of_solvables' THEN ${total_device_number_of_solvables_qty}

#       END
#     ;;
#   }

#   measure: count_event_selected_event_2 {
#     label_from_parameter: selected_event_2
#     type: number
#     required_fields: [selected_event_2]
#     sql:
#       CASE
#         WHEN {% parameter selected_event_2 %} = 'user_engagement' THEN ${total_event_user_engagement_qty}
#         WHEN {% parameter selected_event_2 %} = 'add_textbook_to_favorites' THEN ${total_event_add_textbook_to_favorites_qty}
#         WHEN {% parameter selected_event_2 %} = 'animation_closed' THEN ${total_event_animation_closed_qty}
#         WHEN {% parameter selected_event_2 %} = 'bookpoint_result_show' THEN ${total_event_bookpoint_result_show_qty}
#         WHEN {% parameter selected_event_2 %} = 'plus_menu_click' THEN ${total_event_plus_menu_click_qty}
#         WHEN {% parameter selected_event_2 %} = 'solution_show' THEN ${total_event_solution_show_qty}
#         WHEN {% parameter selected_event_2 %} = 'solution_button_click' THEN ${total_event_solution_button_click_qty}
#         WHEN {% parameter selected_event_2 %} = 'animation_played' THEN ${total_event_animation_played_qty}
#         WHEN {% parameter selected_event_2 %} = 'why_click' THEN ${total_event_why_click_qty}
#         WHEN {% parameter selected_event_2 %} = 'step_how_to_click' THEN ${total_event_step_how_to_click_qty}
#         WHEN {% parameter selected_event_2 %} = 'camera_result_show' THEN ${total_event_camera_result_show_qty}
#         WHEN {% parameter selected_event_2 %} = 'editor_result_show' THEN ${total_event_editor_result_show_qty}
#         WHEN {% parameter selected_event_2 %} = 'number_of_solvables' THEN ${total_event_camera_result_show_qty} + ${total_event_editor_result_show_qty}

#       END
#     ;;
#   }
#   measure: event_per_device_selected_event_2 {
#     type: number
#     required_fields: [selected_event_2]
#     sql: ${count_event_selected_event_2}/${count_device_selected_event_2} ;;
#     value_format: "0.00"
#   }

#   measure: device_ratio_event_1_2 {
#     type: number
#     required_fields: [selected_event,selected_event_2]
#     sql: ${count_device_selected_event}/${count_device_selected_event_2} ;;
#     value_format: "0.00"
#   }


}
