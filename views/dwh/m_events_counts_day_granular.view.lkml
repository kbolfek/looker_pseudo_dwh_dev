view: m_events_counts_day_granular {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `DWH.TBL_M_EVENTS_COUNTS_DAY_GRANULAR`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Animation Max Progress Step Qty" in Explore.

  dimension: animation_max_progress_step_qty {
    type: number
    sql: ${TABLE}.ANIMATION_MAX_PROGRESS_STEP_QTY ;;
  }

  dimension: animation_total_progress_step_qty {
    type: number
    sql: ${TABLE}.ANIMATION_TOTAL_PROGRESS_STEP_QTY ;;
  }

  dimension: app_language {
    type: string
    sql: ${TABLE}.APP_LANGUAGE ;;
  }

  dimension: bookpoint_max_progress_step_qty {
    type: number
    sql: ${TABLE}.BOOKPOINT_MAX_PROGRESS_STEP_QTY ;;
  }

  dimension: bookpoint_total_progress_step_qty {
    type: number
    sql: ${TABLE}.BOOKPOINT_TOTAL_PROGRESS_STEP_QTY ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.COUNTRY_NAME ;;
  }

  dimension: device_id {
    type: string
    sql: ${TABLE}.DEVICE_ID ;;
  }

  dimension: event_add_textbook_to_favorites_qty {
    type: number
    sql: ${TABLE}.EVENT_AddTextbookToFavorites_QTY ;;
  }

  dimension: event_animation_closed_qty {
    type: number
    sql: ${TABLE}.EVENT_AnimationClosed_QTY ;;
  }

  dimension: event_animation_closed_total_number_of_steps_max_qty {
    type: number
    sql: ${TABLE}.EVENT_AnimationClosed_TotalNumberOfSteps_Max_QTY ;;
  }

  dimension: event_animation_played_qty {
    type: number
    sql: ${TABLE}.EVENT_AnimationPlayed_QTY ;;
  }

  dimension: event_app_time_qty {
    type: number
    sql: ${TABLE}.EVENT_AppTime_QTY ;;
  }

  dimension: event_app_time_time_positive_qty {
    type: number
    sql: ${TABLE}.EVENT_AppTime_Time_Positive_QTY ;;
  }

  dimension: event_auth_confirm_email_success_qty {
    type: number
    sql: ${TABLE}.EVENT_AuthConfirmEmailSuccess_QTY ;;
  }

  dimension: event_auth_enable_notification_clicked_qty {
    type: number
    sql: ${TABLE}.EVENT_AuthEnableNotificationClicked_QTY ;;
  }

  dimension: event_auth_enable_notification_shown_qty {
    type: number
    sql: ${TABLE}.EVENT_AuthEnableNotificationShown_QTY ;;
  }

  dimension: event_auth_enable_notification_success_qty {
    type: number
    sql: ${TABLE}.EVENT_AuthEnableNotificationSuccess_QTY ;;
  }

  dimension: event_auth_login_success_qty {
    type: number
    sql: ${TABLE}.EVENT_AuthLoginSuccess_QTY ;;
  }

  dimension: event_auth_registration_age_restriction_qty {
    type: number
    sql: ${TABLE}.EVENT_AuthRegistrationAgeRestriction_QTY ;;
  }

  dimension: event_auth_registration_success_qty {
    type: number
    sql: ${TABLE}.EVENT_AuthRegistrationSuccess_QTY ;;
  }

  dimension: event_auth_wall_clicked_qty {
    type: number
    sql: ${TABLE}.EVENT_AuthWallClicked_QTY ;;
  }

  dimension: event_auth_with_provider_clicked_qty {
    type: number
    sql: ${TABLE}.EVENT_AuthWithProviderClicked_QTY ;;
  }

  dimension: event_bookpoint_all_qty {
    type: number
    sql: ${TABLE}.EVENT_Bookpoint_ALL_QTY ;;
  }

  dimension: event_bookpoint_closed_qty {
    type: number
    sql: ${TABLE}.EVENT_BookpointClosed_QTY ;;
  }

  dimension: event_bookpoint_dismiss_result_view_qty {
    type: number
    sql: ${TABLE}.EVENT_BookpointDismissResultView_QTY ;;
  }

  dimension: event_bookpoint_how_to_solve_qty {
    type: number
    sql: ${TABLE}.EVENT_BookpointHowToSolve_QTY ;;
  }

  dimension: event_bookpoint_result_show_content_solver_qty {
    type: number
    sql: ${TABLE}.EVENT_BookpointResultShow_Content_SOLVER_QTY ;;
  }

  dimension: event_bookpoint_result_show_qty {
    type: number
    sql: ${TABLE}.EVENT_BookpointResultShow_QTY ;;
  }

  dimension: event_camera_button_error_qty {
    type: number
    sql: ${TABLE}.EVENT_CameraButtonError_QTY ;;
  }

  dimension: event_camera_qty {
    type: number
    sql: ${TABLE}.EVENT_Camera_QTY ;;
  }

  dimension: event_camera_result_show_qty {
    type: number
    sql: ${TABLE}.EVENT_CameraResultShow_QTY ;;
  }

  dimension: event_camera_view_error_qty {
    type: number
    sql: ${TABLE}.EVENT_CameraViewError_QTY ;;
  }

  dimension: event_editor_no_result_qty {
    type: number
    sql: ${TABLE}.EVENT_EditorNoResult_QTY ;;
  }

  dimension: event_editor_result_show_qty {
    type: number
    sql: ${TABLE}.EVENT_EditorResultShow_QTY ;;
  }

  dimension: event_enable_notifications_popup_enabled_yes_qty {
    type: number
    sql: ${TABLE}.EVENT_EnableNotificationsPopup_Enabled_Yes_QTY ;;
  }

  dimension: event_enable_notifications_popup_qty {
    type: number
    sql: ${TABLE}.EVENT_EnableNotificationsPopup_QTY ;;
  }

  dimension: event_plus_menu_click_qty {
    type: number
    sql: ${TABLE}.EVENT_PlusMenuClick_QTY ;;
  }

  dimension: event_remove_textbook_from_favorites_qty {
    type: number
    sql: ${TABLE}.EVENT_RemoveTextbookFromFavorites_QTY ;;
  }

  dimension: event_screen_show_screen_authentication_qty {
    type: number
    sql: ${TABLE}.EVENT_ScreenShow_Screen_Authentication_QTY ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: event_server_logged {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.EVENT_SERVER_LOGGED_DATE ;;
  }

  dimension: event_share_channel_qty {
    type: number
    sql: ${TABLE}.EVENT_ShareChannel_QTY ;;
  }

  dimension: event_share_clicked_qty {
    type: number
    sql: ${TABLE}.EVENT_ShareClicked_QTY ;;
  }

  dimension: event_share_status_qty {
    type: number
    sql: ${TABLE}.EVENT_ShareStatus_QTY ;;
  }

  dimension: event_solution_button_click_qty {
    type: number
    sql: ${TABLE}.EVENT_SolutionButtonClick_QTY ;;
  }

  dimension: event_solution_button_click_type_animation_qty {
    type: number
    sql: ${TABLE}.EVENT_SolutionButtonClick_Type_Animation_QTY ;;
  }

  dimension: event_solution_button_click_type_bookpoint_qty {
    type: number
    sql: ${TABLE}.EVENT_SolutionButtonClick_Type_Bookpoint_QTY ;;
  }

  dimension: event_solution_button_click_type_graph_qty {
    type: number
    sql: ${TABLE}.EVENT_SolutionButtonClick_Type_Graph_QTY ;;
  }

  dimension: event_solution_button_click_type_solver_qty {
    type: number
    sql: ${TABLE}.EVENT_SolutionButtonClick_Type_Solver_QTY ;;
  }

  dimension: event_solution_helpful_answered_state_not_ok_qty {
    type: number
    sql: ${TABLE}.EVENT_SolutionHelpfulAnswered_State_NotOk_QTY ;;
  }

  dimension: event_solution_helpful_answered_state_ok_qty {
    type: number
    sql: ${TABLE}.EVENT_SolutionHelpfulAnswered_State_Ok_QTY ;;
  }

  dimension: event_solution_show_qty {
    type: number
    sql: ${TABLE}.EVENT_SolutionShow_QTY ;;
  }

  dimension: event_solution_show_type_animation_qty {
    type: number
    sql: ${TABLE}.EVENT_SolutionShow_Type_Animation_QTY ;;
  }

  dimension: event_solution_show_type_bookpoint_qty {
    type: number
    sql: ${TABLE}.EVENT_SolutionShow_Type_Bookpoint_QTY ;;
  }

  dimension: event_solution_show_type_graph_qty {
    type: number
    sql: ${TABLE}.EVENT_SolutionShow_Type_Graph_QTY ;;
  }

  dimension: event_solution_show_type_solver_qty {
    type: number
    sql: ${TABLE}.EVENT_SolutionShow_Type_Solver_QTY ;;
  }

  dimension: event_solver_hint_click_qty {
    type: number
    sql: ${TABLE}.EVENT_SolverHintClick_QTY ;;
  }

  dimension: event_step_how_to_click_qty {
    type: number
    sql: ${TABLE}.EVENT_StepHowToClick_QTY ;;
  }

  dimension: event_step_level_level_2_qty {
    type: number
    sql: ${TABLE}.EVENT_StepLevel_Level_2_QTY ;;
  }

  dimension: event_step_level_level_3_qty {
    type: number
    sql: ${TABLE}.EVENT_StepLevel_Level_3_QTY ;;
  }

  dimension: event_user_engagement_qty {
    type: number
    sql: ${TABLE}.EVENT_user_engagement_QTY ;;
  }

  dimension: event_why_click_qty {
    type: number
    sql: ${TABLE}.EVENT_WhyClick_QTY ;;
  }

  dimension: event_year_week {
    type: number
    sql: ${TABLE}.EVENT_YEAR_WEEK ;;
  }

  dimension: first_touch_year_week {
    type: number
    sql: ${TABLE}.FIRST_TOUCH_YEAR_WEEK ;;
  }

  dimension: week_diff {
    type: number
    sql: (EXTRACT(YEAR FROM ${event_server_logged_date})*100 + EXTRACT(WEEK FROM ${event_server_logged_date})) - first_touch_year_week;;
  }

  dimension: operating_system {
    type: string
    sql: ${TABLE}.OPERATING_SYSTEM ;;
  }

  dimension: provider {
    type: string
    sql: ${TABLE}.PROVIDER ;;
  }

  dimension: total_session_duration {
    type: number
    sql: ${TABLE}.TotalSessionDuration ;;
  }

  dimension: user_account_id {
    type: string
    sql: ${TABLE}.USER_ACCOUNT_ID ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [country_name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_animation_max_progress_step_qty {
    type: sum
    hidden: yes
    sql: ${animation_max_progress_step_qty} ;;
  }

  measure: average_animation_max_progress_step_qty {
    type: average
    hidden: yes
    sql: ${animation_max_progress_step_qty} ;;
  }

  measure: total_animation_total_progress_step_qty {
    type: sum
    hidden: yes
    sql: ${animation_total_progress_step_qty} ;;
  }

  measure: average_animation_total_progress_step_qty {
    type: average
    hidden: yes
    sql: ${animation_total_progress_step_qty} ;;
  }

  measure: total_bookpoint_max_progress_step_qty {
    type: sum
    hidden: yes
    sql: ${bookpoint_max_progress_step_qty} ;;
  }

  measure: average_bookpoint_max_progress_step_qty {
    type: average
    hidden: yes
    sql: ${bookpoint_max_progress_step_qty} ;;
  }

  measure: total_bookpoint_total_progress_step_qty {
    type: sum
    hidden: yes
    sql: ${bookpoint_total_progress_step_qty} ;;
  }

  measure: average_bookpoint_total_progress_step_qty {
    type: average
    hidden: yes
    sql: ${bookpoint_total_progress_step_qty} ;;
  }

  measure: total_event_add_textbook_to_favorites_qty {
    type: sum
    hidden: yes
    sql: ${event_add_textbook_to_favorites_qty} ;;
  }

  measure: total_device_add_textbook_to_favorites_qty {
    type: count_distinct
    hidden: yes
    sql: ${device_id} ;;
    filters: [event_add_textbook_to_favorites_qty: ">0"]
  }

  measure: average_event_add_textbook_to_favorites_qty {
    type: average
    hidden: yes
    sql: ${event_add_textbook_to_favorites_qty} ;;
  }

  measure: total_event_animation_closed_qty {
    type: sum
    hidden: yes
    sql: ${event_animation_closed_qty} ;;
  }

  measure: total_device_animation_closed_qty {
    type: count_distinct
    hidden: yes
    sql: ${device_id} ;;
    filters: [event_animation_closed_qty: ">0"]
  }

  measure: average_event_animation_closed_qty {
    type: average
    hidden: yes
    sql: ${event_animation_closed_qty} ;;
  }

  measure: total_event_animation_closed_total_number_of_steps_max_qty {
    type: sum
    hidden: yes
    sql: ${event_animation_closed_total_number_of_steps_max_qty} ;;
  }

  measure: average_event_animation_closed_total_number_of_steps_max_qty {
    type: average
    hidden: yes
    sql: ${event_animation_closed_total_number_of_steps_max_qty} ;;
  }

  measure: total_event_animation_played_qty {
    type: sum
    hidden: yes
    sql: ${event_animation_played_qty} ;;
  }

  measure: total_device_animation_played_qty {
    type: count_distinct
    hidden: yes
    sql: ${device_id} ;;
    filters: [event_animation_played_qty: ">0"]
  }

  measure: average_event_animation_played_qty {
    type: average
    hidden: yes
    sql: ${event_animation_played_qty} ;;
  }

  measure: total_event_app_time_qty {
    type: sum
    hidden: yes
    sql: ${event_app_time_qty} ;;
  }

  measure: average_event_app_time_qty {
    type: average
    hidden: yes
    sql: ${event_app_time_qty} ;;
  }

  measure: total_event_app_time_time_positive_qty {
    type: sum
    hidden: yes
    sql: ${event_app_time_time_positive_qty} ;;
  }

  measure: average_event_app_time_time_positive_qty {
    type: average
    hidden: yes
    sql: ${event_app_time_time_positive_qty} ;;
  }

  measure: total_event_auth_confirm_email_success_qty {
    type: sum
    hidden: yes
    sql: ${event_auth_confirm_email_success_qty} ;;
  }

  measure: total_device_auth_confirm_email_success_qty {
    type: count_distinct
    hidden: yes
    sql: ${device_id} ;;
    filters: [event_auth_confirm_email_success_qty: ">0"]
  }

  measure: average_event_auth_confirm_email_success_qty {
    type: average
    hidden: yes
    sql: ${event_auth_confirm_email_success_qty} ;;
  }

  measure: total_event_auth_enable_notification_clicked_qty {
    type: sum
    hidden: yes
    sql: ${event_auth_enable_notification_clicked_qty} ;;
  }

  measure: average_event_auth_enable_notification_clicked_qty {
    type: average
    hidden: yes
    sql: ${event_auth_enable_notification_clicked_qty} ;;
  }

  measure: total_event_auth_enable_notification_shown_qty {
    type: sum
    hidden: yes
    sql: ${event_auth_enable_notification_shown_qty} ;;
  }

  measure: average_event_auth_enable_notification_shown_qty {
    type: average
    hidden: yes
    sql: ${event_auth_enable_notification_shown_qty} ;;
  }

  measure: total_event_auth_enable_notification_success_qty {
    type: sum
    hidden: yes
    sql: ${event_auth_enable_notification_success_qty} ;;
  }

  measure: average_event_auth_enable_notification_success_qty {
    type: average
    hidden: yes
    sql: ${event_auth_enable_notification_success_qty} ;;
  }

  measure: total_event_auth_login_success_qty {
    type: sum
    hidden: yes
    sql: ${event_auth_login_success_qty} ;;
  }

  measure: average_event_auth_login_success_qty {
    type: average
    hidden: yes
    sql: ${event_auth_login_success_qty} ;;
  }

  measure: total_event_auth_registration_age_restriction_qty {
    type: sum
    hidden: yes
    sql: ${event_auth_registration_age_restriction_qty} ;;
  }

  measure: average_event_auth_registration_age_restriction_qty {
    type: average
    hidden: yes
    sql: ${event_auth_registration_age_restriction_qty} ;;
  }

  measure: total_event_auth_registration_success_qty {
    type: sum
    hidden: yes
    sql: ${event_auth_registration_success_qty} ;;
  }

  measure: average_event_auth_registration_success_qty {
    type: average
    hidden: yes
    sql: ${event_auth_registration_success_qty} ;;
  }

  measure: total_event_auth_wall_clicked_qty {
    type: sum
    hidden: yes
    sql: ${event_auth_wall_clicked_qty} ;;
  }

  measure: average_event_auth_wall_clicked_qty {
    type: average
    hidden: yes
    sql: ${event_auth_wall_clicked_qty} ;;
  }

  measure: total_event_auth_with_provider_clicked_qty {
    type: sum
    hidden: yes
    sql: ${event_auth_with_provider_clicked_qty} ;;
  }

  measure: average_event_auth_with_provider_clicked_qty {
    type: average
    hidden: yes
    sql: ${event_auth_with_provider_clicked_qty} ;;
  }

  measure: total_event_bookpoint_all_qty {
    type: sum
    hidden: yes
    sql: ${event_bookpoint_all_qty} ;;
  }

  measure: total_device_bookpoint_all_qty {
    type: count_distinct
    hidden: yes
    sql: ${device_id} ;;
    filters: [event_bookpoint_all_qty: ">0"]
  }

  measure: average_event_bookpoint_all_qty {
    type: average
    hidden: yes
    sql: ${event_bookpoint_all_qty} ;;
  }

  measure: total_event_bookpoint_closed_qty {
    type: sum
    hidden: yes
    sql: ${event_bookpoint_closed_qty} ;;
  }

  measure: total_device_bookpoint_closed_qty {
    type: count_distinct
    hidden: yes
    sql: ${device_id} ;;
    filters: [event_bookpoint_closed_qty: ">0"]
  }

  measure: average_event_bookpoint_closed_qty {
    type: average
    hidden: yes
    sql: ${event_bookpoint_closed_qty} ;;
  }

  measure: total_event_bookpoint_dismiss_result_view_qty {
    type: sum
    hidden: yes
    sql: ${event_bookpoint_dismiss_result_view_qty} ;;
  }

  measure: average_event_bookpoint_dismiss_result_view_qty {
    type: average
    hidden: yes
    sql: ${event_bookpoint_dismiss_result_view_qty} ;;
  }

  measure: total_event_bookpoint_how_to_solve_qty {
    type: sum
    hidden: yes
    sql: ${event_bookpoint_how_to_solve_qty} ;;
  }

  measure: average_event_bookpoint_how_to_solve_qty {
    type: average
    hidden: yes
    sql: ${event_bookpoint_how_to_solve_qty} ;;
  }

  measure: total_event_bookpoint_result_show_content_solver_qty {
    type: sum
    hidden: yes
    sql: ${event_bookpoint_result_show_content_solver_qty} ;;
  }

  measure: total_device_bookpoint_result_show_content_solver_qty {
    type: count_distinct
    hidden: yes
    sql: ${device_id} ;;
    filters: [event_bookpoint_result_show_content_solver_qty: ">0"]
  }

  measure: average_event_bookpoint_result_show_content_solver_qty {
    type: average
    hidden: yes
    sql: ${event_bookpoint_result_show_content_solver_qty} ;;
  }

  measure: total_event_bookpoint_result_show_qty {
    type: sum
    hidden: yes
    sql: ${event_bookpoint_result_show_qty} ;;
  }

  measure: total_device_bookpoint_result_show_qty {
    type: count_distinct
    hidden: yes
    sql: ${device_id} ;;
    filters: [event_bookpoint_result_show_qty: ">0"]
  }

  measure: average_event_bookpoint_result_show_qty {
    type: average
    hidden: yes
    sql: ${event_bookpoint_result_show_qty} ;;
  }

  measure: total_event_camera_button_error_qty {
    type: sum
    hidden: yes
    sql: ${event_camera_button_error_qty} ;;
  }

  measure: total_device_camera_button_error_qty {
    type: count_distinct
    hidden: yes
    sql: ${device_id} ;;
    filters: [event_camera_button_error_qty: ">0"]
  }

  measure: average_event_camera_button_error_qty {
    type: average
    hidden: yes
    sql: ${event_camera_button_error_qty} ;;
  }

  measure: total_event_camera_qty {
    type: sum
    hidden: yes
    sql: ${event_camera_qty} ;;
  }

  measure: total_device_camera_qty {
    type: count_distinct
    hidden: yes
    sql: ${device_id} ;;
    filters: [event_camera_qty: ">0"]
  }

  measure: average_event_camera_qty {
    type: average
    hidden: yes
    sql: ${event_camera_qty} ;;
  }

  measure: total_event_camera_result_show_qty {
    type: sum
    hidden: yes
    sql: ${event_camera_result_show_qty} ;;
  }

  measure: total_device_camera_result_show_qty {
    type: count_distinct
    hidden: yes
    sql: ${device_id} ;;
    filters: [event_camera_result_show_qty: ">0"]
  }

  measure: average_event_camera_result_show_qty {
    type: average
    hidden: yes
    sql: ${event_camera_result_show_qty} ;;
  }

  measure: total_event_camera_view_error_qty {
    type: sum
    hidden: yes
    sql: ${event_camera_view_error_qty} ;;
  }

  measure: average_event_camera_view_error_qty {
    type: average
    hidden: yes
    sql: ${event_camera_view_error_qty} ;;
  }

  measure: total_event_editor_no_result_qty {
    type: sum
    hidden: yes
    sql: ${event_editor_no_result_qty} ;;
  }

  measure: total_device_editor_no_result_qty {
    type: count_distinct
    hidden: yes
    sql: ${device_id} ;;
    filters: [event_editor_no_result_qty: ">0"]
  }

  measure: average_event_editor_no_result_qty {
    type: average
    hidden: yes
    sql: ${event_editor_no_result_qty} ;;
  }

  measure: total_event_editor_result_show_qty {
    type: sum
    hidden: yes
    sql: ${event_editor_result_show_qty} ;;
  }

  measure: total_device_editor_result_show_qty {
    type: count_distinct
    hidden: yes
    sql: ${device_id} ;;
    filters: [event_editor_result_show_qty: ">0"]
  }

  measure: average_event_editor_result_show_qty {
    type: average
    hidden: yes
    sql: ${event_editor_result_show_qty} ;;
  }

  measure: total_device_number_of_solvables_qty {
    type: count_distinct
    hidden: yes
    sql: CASE WHEN ${event_editor_result_show_qty} > 0 OR ${event_camera_result_show_qty} > 0 THEN ${device_id} ELSE NULL END ;;
  }

  measure: total_event_enable_notifications_popup_enabled_yes_qty {
    type: sum
    hidden: yes
    sql: ${event_enable_notifications_popup_enabled_yes_qty} ;;
  }

  measure: average_event_enable_notifications_popup_enabled_yes_qty {
    type: average
    hidden: yes
    sql: ${event_enable_notifications_popup_enabled_yes_qty} ;;
  }

  measure: total_event_enable_notifications_popup_qty {
    type: sum
    hidden: yes
    sql: ${event_enable_notifications_popup_qty} ;;
  }

  measure: average_event_enable_notifications_popup_qty {
    type: average
    hidden: yes
    sql: ${event_enable_notifications_popup_qty} ;;
  }

  measure: total_event_plus_menu_click_qty {
    type: sum
    hidden: yes
    sql: ${event_plus_menu_click_qty} ;;
  }

  measure: total_device_plus_menu_click_qty {
    type: count_distinct
    hidden: yes
    sql: ${device_id} ;;
    filters: [event_plus_menu_click_qty: ">0"]
  }

  measure: average_event_plus_menu_click_qty {
    type: average
    hidden: yes
    sql: ${event_plus_menu_click_qty} ;;
  }

  measure: total_event_remove_textbook_from_favorites_qty {
    type: sum
    hidden: yes
    sql: ${event_remove_textbook_from_favorites_qty} ;;
  }

  measure: average_event_remove_textbook_from_favorites_qty {
    type: average
    hidden: yes
    sql: ${event_remove_textbook_from_favorites_qty} ;;
  }

  measure: total_event_screen_show_screen_authentication_qty {
    type: sum
    hidden: yes
    sql: ${event_screen_show_screen_authentication_qty} ;;
  }

  measure: average_event_screen_show_screen_authentication_qty {
    type: average
    hidden: yes
    sql: ${event_screen_show_screen_authentication_qty} ;;
  }

  measure: total_event_share_channel_qty {
    type: sum
    hidden: yes
    sql: ${event_share_channel_qty} ;;
  }

  measure: average_event_share_channel_qty {
    type: average
    hidden: yes
    sql: ${event_share_channel_qty} ;;
  }

  measure: total_event_share_clicked_qty {
    type: sum
    hidden: yes
    sql: ${event_share_clicked_qty} ;;
  }

  measure: average_event_share_clicked_qty {
    type: average
    hidden: yes
    sql: ${event_share_clicked_qty} ;;
  }

  measure: total_event_share_status_qty {
    type: sum
    hidden: yes
    sql: ${event_share_status_qty} ;;
  }

  measure: average_event_share_status_qty {
    type: average
    hidden: yes
    sql: ${event_share_status_qty} ;;
  }

  measure: total_event_solution_button_click_qty {
    type: sum
    hidden: yes
    sql: ${event_solution_button_click_qty} ;;
  }

  measure: total_device_solution_button_click_qty {
    type: count_distinct
    hidden: yes
    sql: ${device_id} ;;
    filters: [event_solution_button_click_qty: ">0"]
  }

  measure: average_event_solution_button_click_qty {
    type: average
    hidden: yes
    sql: ${event_solution_button_click_qty} ;;
  }

  measure: total_event_solution_button_click_type_animation_qty {
    type: sum
    hidden: yes
    sql: ${event_solution_button_click_type_animation_qty} ;;
  }

  measure: average_event_solution_button_click_type_animation_qty {
    type: average
    hidden: yes
    sql: ${event_solution_button_click_type_animation_qty} ;;
  }

  measure: total_event_solution_button_click_type_bookpoint_qty {
    type: sum
    hidden: yes
    sql: ${event_solution_button_click_type_bookpoint_qty} ;;
  }

  measure: average_event_solution_button_click_type_bookpoint_qty {
    type: average
    hidden: yes
    sql: ${event_solution_button_click_type_bookpoint_qty} ;;
  }

  measure: total_event_solution_button_click_type_graph_qty {
    type: sum
    hidden: yes
    sql: ${event_solution_button_click_type_graph_qty} ;;
  }

  measure: average_event_solution_button_click_type_graph_qty {
    type: average
    hidden: yes
    sql: ${event_solution_button_click_type_graph_qty} ;;
  }

  measure: total_event_solution_button_click_type_solver_qty {
    type: sum
    hidden: yes
    sql: ${event_solution_button_click_type_solver_qty} ;;
  }

  measure: average_event_solution_button_click_type_solver_qty {
    type: average
    hidden: yes
    sql: ${event_solution_button_click_type_solver_qty} ;;
  }

  measure: total_event_solution_helpful_answered_state_not_ok_qty {
    type: sum
    hidden: yes
    sql: ${event_solution_helpful_answered_state_not_ok_qty} ;;
  }

  measure: average_event_solution_helpful_answered_state_not_ok_qty {
    type: average
    hidden: yes
    sql: ${event_solution_helpful_answered_state_not_ok_qty} ;;
  }

  measure: total_event_solution_helpful_answered_state_ok_qty {
    type: sum
    hidden: yes
    sql: ${event_solution_helpful_answered_state_ok_qty} ;;
  }

  measure: total_device_solution_helpful_answered_state_ok_qty {
    type: count_distinct
    hidden: yes
    sql: ${device_id} ;;
    filters: [event_solution_helpful_answered_state_ok_qty: ">0"]
  }

  measure: average_event_solution_helpful_answered_state_ok_qty {
    type: average
    hidden: yes
    sql: ${event_solution_helpful_answered_state_ok_qty} ;;
  }

  measure: total_event_solution_show_qty {
    type: sum
    hidden: yes
    sql: ${event_solution_show_qty} ;;
  }

  measure: total_device_solution_show_qty {
    type: count_distinct
    hidden: yes
    sql: ${device_id} ;;
    filters: [event_solution_show_qty: ">0"]
  }

  measure: average_event_solution_show_qty {
    type: average
    hidden: yes
    sql: ${event_solution_show_qty} ;;
  }

  measure: total_event_solution_show_type_animation_qty {
    type: sum
    hidden: yes
    sql: ${event_solution_show_type_animation_qty} ;;
  }

  measure: average_event_solution_show_type_animation_qty {
    type: average
    hidden: yes
    sql: ${event_solution_show_type_animation_qty} ;;
  }

  measure: total_event_solution_show_type_bookpoint_qty {
    type: sum
    hidden: yes
    sql: ${event_solution_show_type_bookpoint_qty} ;;
  }

  measure: average_event_solution_show_type_bookpoint_qty {
    type: average
    hidden: yes
    sql: ${event_solution_show_type_bookpoint_qty} ;;
  }

  measure: total_event_solution_show_type_graph_qty {
    type: sum
    hidden: yes
    sql: ${event_solution_show_type_graph_qty} ;;
  }

  measure: average_event_solution_show_type_graph_qty {
    type: average
    hidden: yes
    sql: ${event_solution_show_type_graph_qty} ;;
  }

  measure: total_event_solution_show_type_solver_qty {
    type: sum
    hidden: yes
    sql: ${event_solution_show_type_solver_qty} ;;
  }

  measure: average_event_solution_show_type_solver_qty {
    type: average
    hidden: yes
    sql: ${event_solution_show_type_solver_qty} ;;
  }

  measure: total_event_solver_hint_click_qty {
    type: sum
    hidden: yes
    sql: ${event_solver_hint_click_qty} ;;
  }

  measure: total_device_solver_hint_click_qty {
    type: count_distinct
    hidden: yes
    sql: ${device_id} ;;
    filters: [event_solver_hint_click_qty: ">0"]
  }

  measure: average_event_solver_hint_click_qty {
    type: average
    hidden: yes
    sql: ${event_solver_hint_click_qty} ;;
  }

  measure: total_event_step_how_to_click_qty {
    type: sum
    hidden: yes
    sql: ${event_step_how_to_click_qty} ;;
  }

  measure: total_device_step_how_to_click_qty {
    type: count_distinct
    hidden: yes
    sql: ${device_id} ;;
    filters: [event_step_how_to_click_qty: ">0"]
  }

  measure: average_event_step_how_to_click_qty {
    type: average
    hidden: yes
    sql: ${event_step_how_to_click_qty} ;;
  }

  measure: total_event_step_level_level_2_qty {
    type: sum
    hidden: yes
    sql: ${event_step_level_level_2_qty} ;;
  }

  measure: average_event_step_level_level_2_qty {
    type: average
    hidden: yes
    sql: ${event_step_level_level_2_qty} ;;
  }

  measure: total_event_step_level_level_3_qty {
    type: sum
    hidden: yes
    sql: ${event_step_level_level_3_qty} ;;
  }

  measure: average_event_step_level_level_3_qty {
    type: average
    hidden: yes
    sql: ${event_step_level_level_3_qty} ;;
  }

  measure: total_event_user_engagement_qty {
    type: sum
    hidden: yes
    sql: ${event_user_engagement_qty} ;;
  }

  measure: total_device_user_engagement_qty {
    type: count_distinct
    hidden: yes
    sql: ${device_id} ;;
    filters: [event_user_engagement_qty: ">0"]
  }

  measure: average_event_user_engagement_qty {
    type: average
    hidden: yes
    sql: ${event_user_engagement_qty} ;;
  }

  measure: total_event_why_click_qty {
    type: sum
    hidden: yes
    sql: ${event_why_click_qty} ;;
  }

  measure: total_device_why_click_qty {
    type: count_distinct
    hidden: yes
    sql: ${device_id} ;;
    filters: [event_why_click_qty: ">0"]
  }

  measure: average_event_why_click_qty {
    type: average
    hidden: yes
    sql: ${event_why_click_qty} ;;
  }

  measure: total_event_year_week {
    type: sum
    hidden: yes
    sql: ${event_year_week} ;;
  }

  measure: average_event_year_week {
    type: average
    hidden: yes
    sql: ${event_year_week} ;;
  }

  measure: total_first_touch_year_week {
    type: sum
    hidden: yes
    sql: ${first_touch_year_week} ;;
  }

  measure: average_first_touch_year_week {
    type: average
    hidden: yes
    sql: ${first_touch_year_week} ;;
  }

  measure: total_total_session_duration {
    type: sum
    hidden: yes
    sql: ${total_session_duration} ;;
  }

  measure: average_total_session_duration {
    type: average
    hidden: yes
    sql: ${total_session_duration} ;;
  }
#----------------------------------------------------------------------------------------
# CUSTOM MEASURES

  measure: total_device_user_engagement_installation_cohort {
    type: number
    hidden: no
    sql: MAX(${total_device_user_engagement_qty}) OVER (PARTITION BY ${first_touch_year_week}) ;;
  }


#----------------------------------------------------------------------------------------
# CUSTOM PARAMETER EVENTS
  parameter: timeframe_picker {
    label: "Time Granularity"
    default_value: "week"
    type: string
    allowed_value: {
      label: "Week"
      value: "week"
    }
    allowed_value: {
      label: "Day"
      value: "day"
    }
    allowed_value: {
      label: "Month"
      value: "month"
    }
    allowed_value: {
      label: "Year"
      value: "year"
    }
  }

  dimension: time_dimension {
    label_from_parameter: timeframe_picker
    type: string
    required_fields: [timeframe_picker]
    sql:
    CASE
      WHEN {% parameter timeframe_picker %} = 'week' THEN CAST(${event_server_logged_week} as String)
      WHEN {% parameter timeframe_picker %} = 'day' THEN CAST(${event_server_logged_date} as String)
      WHEN {% parameter timeframe_picker %} = 'month' THEN CAST(${event_server_logged_month} as String)
      WHEN {% parameter timeframe_picker %} = 'year' THEN CAST(${event_server_logged_year} as String)
    END ;;
  }

  parameter: selected_event {
    label: "Select Event Name"
    default_value: "user_engagement"
    type: string
    allowed_value: {
      label: "UserEngagement"
      value: "user_engagement"
    }
    allowed_value: {
      label: "AddTextbookToFavorites"
      value: "add_textbook_to_favorites"
    }
    allowed_value: {
      label: "AnimationClosed"
      value: "animation_closed"
    }
    allowed_value: {
      label: "BookpointResultShow"
      value: "bookpoint_result_show"
    }
    allowed_value: {
      label: "PlusMenuClick"
      value: "plus_menu_click"
    }
    allowed_value: {
      label: "SolutionShow"
      value: "solution_show"
    }
    allowed_value: {
      label: "SolutionButtonClick"
      value: "solution_button_click"
    }
    allowed_value: {
      label: "AnimationPlayed"
      value: "animation_played"
    }
    allowed_value: {
      label: "WhyClick"
      value: "why_click"
    }
    allowed_value: {
      label: "StepHowToClick"
      value: "step_how_to_click"
    }
    allowed_value: {
      label: "CameraResultShow"
      value: "camera_result_show"
    }
    allowed_value: {
      label: "EditorResultShow"
      value: "editor_result_show"
    }
    allowed_value: {
      label: "NumberOfSolvables"
      value: "number_of_solvables"
    }
  }

  measure: count_device_selected_event {
    label_from_parameter: selected_event
    type: number
    required_fields: [selected_event]
    sql:
      CASE
        WHEN {% parameter selected_event %} = 'user_engagement' THEN ${total_device_user_engagement_qty}
        WHEN {% parameter selected_event %} = 'add_textbook_to_favorites' THEN ${total_device_add_textbook_to_favorites_qty}
        WHEN {% parameter selected_event %} = 'animation_closed' THEN ${total_device_animation_closed_qty}
        WHEN {% parameter selected_event %} = 'bookpoint_result_show' THEN ${total_device_bookpoint_result_show_qty}
        WHEN {% parameter selected_event %} = 'plus_menu_click' THEN ${total_device_plus_menu_click_qty}
        WHEN {% parameter selected_event %} = 'solution_show' THEN ${total_device_solution_show_qty}
        WHEN {% parameter selected_event %} = 'solution_button_click' THEN ${total_device_solution_button_click_qty}
        WHEN {% parameter selected_event %} = 'animation_played' THEN ${total_device_animation_played_qty}
        WHEN {% parameter selected_event %} = 'why_click' THEN ${total_device_why_click_qty}
        WHEN {% parameter selected_event %} = 'step_how_to_click' THEN ${total_event_step_how_to_click_qty}
        WHEN {% parameter selected_event %} = 'camera_result_show' THEN ${total_device_camera_result_show_qty}
        WHEN {% parameter selected_event %} = 'editor_result_show' THEN ${total_device_editor_result_show_qty}
        WHEN {% parameter selected_event %} = 'number_of_solvables' THEN ${total_device_number_of_solvables_qty}

      END
    ;;
  }

  measure: count_event_selected_event {
    label_from_parameter: selected_event
    type: number
    required_fields: [selected_event]
    sql:
      CASE
        WHEN {% parameter selected_event %} = 'user_engagement' THEN ${total_event_user_engagement_qty}
        WHEN {% parameter selected_event %} = 'add_textbook_to_favorites' THEN ${total_event_add_textbook_to_favorites_qty}
        WHEN {% parameter selected_event %} = 'animation_closed' THEN ${total_event_animation_closed_qty}
        WHEN {% parameter selected_event %} = 'bookpoint_result_show' THEN ${total_event_bookpoint_result_show_qty}
        WHEN {% parameter selected_event %} = 'plus_menu_click' THEN ${total_event_plus_menu_click_qty}
        WHEN {% parameter selected_event %} = 'solution_show' THEN ${total_event_solution_show_qty}
        WHEN {% parameter selected_event %} = 'solution_button_click' THEN ${total_event_solution_button_click_qty}
        WHEN {% parameter selected_event %} = 'animation_played' THEN ${total_event_animation_played_qty}
        WHEN {% parameter selected_event %} = 'why_click' THEN ${total_event_why_click_qty}
        WHEN {% parameter selected_event %} = 'step_how_to_click' THEN ${total_event_step_how_to_click_qty}
        WHEN {% parameter selected_event %} = 'camera_result_show' THEN ${total_event_camera_result_show_qty}
        WHEN {% parameter selected_event %} = 'editor_result_show' THEN ${total_event_editor_result_show_qty}
        WHEN {% parameter selected_event %} = 'number_of_solvables' THEN ${total_event_camera_result_show_qty} + ${total_event_editor_result_show_qty}

      END
    ;;
  }
  measure: event_per_device_selected_event {
    type: number
    required_fields: [selected_event]
    sql: ${count_event_selected_event}/${count_device_selected_event} ;;
    value_format: "0.00"
  }

  parameter: selected_event_2 {
    label: "Select Event Name 2"
    default_value: "user_engagement"
    type: string
    allowed_value: {
      label: "UserEngagement"
      value: "user_engagement"
    }
    allowed_value: {
      label: "AddTextbookToFavorites"
      value: "add_textbook_to_favorites"
    }
    allowed_value: {
      label: "AnimationClosed"
      value: "animation_closed"
    }
    allowed_value: {
      label: "BookpointResultShow"
      value: "bookpoint_result_show"
    }
    allowed_value: {
      label: "PlusMenuClick"
      value: "plus_menu_click"
    }
    allowed_value: {
      label: "SolutionShow"
      value: "solution_show"
    }
    allowed_value: {
      label: "SolutionButtonClick"
      value: "solution_button_click"
    }
    allowed_value: {
      label: "AnimationPlayed"
      value: "animation_played"
    }
    allowed_value: {
      label: "WhyClick"
      value: "why_click"
    }
    allowed_value: {
      label: "StepHowToClick"
      value: "step_how_to_click"
    }
    allowed_value: {
      label: "CameraResultShow"
      value: "camera_result_show"
    }
    allowed_value: {
      label: "EditorResultShow"
      value: "editor_result_show"
    }
    allowed_value: {
      label: "NumberOfSolvables"
      value: "number_of_solvables"
    }

  }

  measure: count_device_selected_event_2 {
    label_from_parameter: selected_event_2
    type: number
    required_fields: [selected_event_2]
    sql:
      CASE
        WHEN {% parameter selected_event_2 %} = 'user_engagement' THEN ${total_device_user_engagement_qty}
        WHEN {% parameter selected_event_2 %} = 'add_textbook_to_favorites' THEN ${total_device_add_textbook_to_favorites_qty}
        WHEN {% parameter selected_event_2 %} = 'animation_closed' THEN ${total_device_animation_closed_qty}
        WHEN {% parameter selected_event_2 %} = 'bookpoint_result_show' THEN ${total_device_bookpoint_result_show_qty}
        WHEN {% parameter selected_event_2 %} = 'plus_menu_click' THEN ${total_device_plus_menu_click_qty}
        WHEN {% parameter selected_event_2 %} = 'solution_show' THEN ${total_device_solution_show_qty}
        WHEN {% parameter selected_event_2 %} = 'solution_button_click' THEN ${total_device_solution_button_click_qty}
        WHEN {% parameter selected_event_2 %} = 'animation_played' THEN ${total_device_animation_played_qty}
        WHEN {% parameter selected_event_2 %} = 'why_click' THEN ${total_device_why_click_qty}
        WHEN {% parameter selected_event_2 %} = 'step_how_to_click' THEN ${total_device_step_how_to_click_qty}
        WHEN {% parameter selected_event_2 %} = 'camera_result_show' THEN ${total_device_camera_result_show_qty}
        WHEN {% parameter selected_event_2 %} = 'editor_result_show' THEN ${total_device_editor_result_show_qty}
        WHEN {% parameter selected_event_2 %} = 'number_of_solvables' THEN ${total_device_number_of_solvables_qty}

      END
    ;;
  }

  measure: count_event_selected_event_2 {
    label_from_parameter: selected_event_2
    type: number
    required_fields: [selected_event_2]
    sql:
      CASE
        WHEN {% parameter selected_event_2 %} = 'user_engagement' THEN ${total_event_user_engagement_qty}
        WHEN {% parameter selected_event_2 %} = 'add_textbook_to_favorites' THEN ${total_event_add_textbook_to_favorites_qty}
        WHEN {% parameter selected_event_2 %} = 'animation_closed' THEN ${total_event_animation_closed_qty}
        WHEN {% parameter selected_event_2 %} = 'bookpoint_result_show' THEN ${total_event_bookpoint_result_show_qty}
        WHEN {% parameter selected_event_2 %} = 'plus_menu_click' THEN ${total_event_plus_menu_click_qty}
        WHEN {% parameter selected_event_2 %} = 'solution_show' THEN ${total_event_solution_show_qty}
        WHEN {% parameter selected_event_2 %} = 'solution_button_click' THEN ${total_event_solution_button_click_qty}
        WHEN {% parameter selected_event_2 %} = 'animation_played' THEN ${total_event_animation_played_qty}
        WHEN {% parameter selected_event_2 %} = 'why_click' THEN ${total_event_why_click_qty}
        WHEN {% parameter selected_event_2 %} = 'step_how_to_click' THEN ${total_event_step_how_to_click_qty}
        WHEN {% parameter selected_event_2 %} = 'camera_result_show' THEN ${total_event_camera_result_show_qty}
        WHEN {% parameter selected_event_2 %} = 'editor_result_show' THEN ${total_event_editor_result_show_qty}
        WHEN {% parameter selected_event_2 %} = 'number_of_solvables' THEN ${total_event_camera_result_show_qty} + ${total_event_editor_result_show_qty}

      END
    ;;
  }
  measure: event_per_device_selected_event_2 {
    type: number
    required_fields: [selected_event_2]
    sql: ${count_event_selected_event_2}/${count_device_selected_event_2} ;;
    value_format: "0.00"
  }

  measure: device_ratio_event_1_2 {
    type: number
    required_fields: [selected_event,selected_event_2]
    sql: ${count_device_selected_event}/${count_device_selected_event_2} ;;
    value_format: "0.00"
  }
}
