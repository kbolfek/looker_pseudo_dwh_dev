# The name of this view in Looker is "M App Event Count"
view: m_app_event_count {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `DWH.TBL_M_APP_EVENT_COUNT`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  dimension_group: event_client_logged {
    type: time
    description: "Date of server logging the event."
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
    sql: ${TABLE}.EVENT_CLIENT_LOGGED_DATE ;;
  }

  dimension: event_year_month {
    type: number
    description: "Year and month of the event happening on client side."
    sql: ${TABLE}.EVENT_YEAR_MONTH ;;
  }

  dimension: event_year_week {
    type: number
    description: "Year and week of the event happening on client side."
    sql: ${TABLE}.EVENT_YEAR_WEEK ;;
  }

  dimension_group: device_installation_dt {
    type: time
    description: "Timestamp at which the app was first opened after installation."
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DEVICE_INSTALLATION_DT ;;
  }

  dimension: device_installation_year_week {
    type: number
    description: "Year and week of when the DEVICE_ID first touched the app."
    sql: ${TABLE}.DEVICE_INSTALLATION_YEAR_WEEK ;;
  }

  dimension: device_id {
    type: string
    description: "Foreign key to table D_DEVICE. ID of the device using the app."
    sql: ${TABLE}.DEVICE_ID ;;
  }

  dimension: platform {
    type: string
    description: "Platform on which the app was built (IOS/ANDROID)."
    sql: ${TABLE}.PLATFORM ;;
  }

  dimension: user_account_id {
    type: string
    description: "Foreign key to table D_USER_ACCOUNT. User-created account ID."
    sql: ${TABLE}.USER_ACCOUNT_ID ;;
  }

  dimension: installation_id {
    type: string
    description: "ID of the app (re)installation."
    sql: ${TABLE}.INSTALLATION_ID ;;
  }

  dimension: provider {
    type: string
    sql: ${TABLE}.PROVIDER ;;
  }

  dimension: app_language {
    type: string
    description: "Language set for the app."
    sql: ${TABLE}.APP_LANGUAGE ;;
  }

  dimension: event_country_id {
    type: number
    description: "Foreign key to table D_COUNTRY. ID of he country from which events were reported based on IP address."
    sql: ${TABLE}.EVENT_COUNTRY_ID ;;
  }

  dimension: event_country_name {
    type: string
    description: "Name of he country from which events were reported based on IP address."
    sql: ${TABLE}.EVENT_COUNTRY_NAME ;;
  }




  dimension: animation_max_progress_step_qty {
    type: number
    description: "Number of MaxProgressSteps for AnimationClosed event."
    sql: ${TABLE}.ANIMATION_MAX_PROGRESS_STEP_QTY ;;
  }

  dimension: animation_total_progress_step_qty {
    type: number
    description: "Number of TotalNumberOfSteps for AnimationClosed event."
    sql: ${TABLE}.ANIMATION_TOTAL_PROGRESS_STEP_QTY ;;
  }


  dimension: bookpoint_max_progress_step_qty {
    type: number
    description: "Number of MaxProgressSteps for all Bookpoint-named events."
    sql: ${TABLE}.BOOKPOINT_MAX_PROGRESS_STEP_QTY ;;
  }

  dimension: bookpoint_total_progress_step_qty {
    type: number
    description: "Number of TotalNumberOfSteps for all Bookpoint-named events."
    sql: ${TABLE}.BOOKPOINT_TOTAL_PROGRESS_STEP_QTY ;;
  }







  dimension: event_add_textbook_to_favorites_qty {
    type: number
    description: "How many times did the event 'AddTextbookToFavorites' occur."
    sql: ${TABLE}.EVENT_AddTextbookToFavorites_QTY ;;
  }

  dimension: event_animation_closed_qty {
    type: number
    description: "How many times did the event 'AnimationClosed' occur."
    sql: ${TABLE}.EVENT_AnimationClosed_QTY ;;
  }

  dimension: event_animation_closed_total_number_of_steps_max_qty {
    type: number
    description: "How many times did the event 'AnimationClosed' occur, having TotalNumberOfSteps=MaxProgressStep"
    sql: ${TABLE}.EVENT_AnimationClosed_TotalNumberOfSteps_Max_QTY ;;
  }

  dimension: event_animation_played_qty {
    type: number
    description: "How many times did the event 'AnimationPlayed' occur."
    sql: ${TABLE}.EVENT_AnimationPlayed_QTY ;;
  }

  dimension: event_app_time_qty {
    type: number
    description: "How many times did the event 'AppTime' occur."
    sql: ${TABLE}.EVENT_AppTime_QTY ;;
  }

  dimension: event_app_time_time_positive_qty {
    type: number
    description: "How many times did the event 'AppTime' occur, having Time greater than zero"
    sql: ${TABLE}.EVENT_AppTime_Time_Positive_QTY ;;
  }

  dimension: event_auth_confirm_email_success_qty {
    type: number
    description: "How many times did the event 'AuthConfirmEmailSuccess' occur."
    sql: ${TABLE}.EVENT_AuthConfirmEmailSuccess_QTY ;;
  }

  dimension: event_auth_enable_notification_clicked_qty {
    type: number
    description: "How many times did the event 'AuthEnableNotificationClicked' occur."
    sql: ${TABLE}.EVENT_AuthEnableNotificationClicked_QTY ;;
  }

  dimension: event_auth_enable_notification_shown_qty {
    type: number
    description: "How many times did the event 'AuthEnableNotificationShown' occur."
    sql: ${TABLE}.EVENT_AuthEnableNotificationShown_QTY ;;
  }

  dimension: event_auth_enable_notification_success_qty {
    type: number
    description: "How many times did the event 'AuthEnableNotificationSuccess' occur."
    sql: ${TABLE}.EVENT_AuthEnableNotificationSuccess_QTY ;;
  }

  dimension: event_auth_login_success_qty {
    type: number
    description: "How many times did the event 'AuthLoginSuccess' occur."
    sql: ${TABLE}.EVENT_AuthLoginSuccess_QTY ;;
  }

  dimension: event_auth_registration_age_restriction_qty {
    type: number
    description: "How many times did the event 'AuthRegistrationAgeRestriction' occur."
    sql: ${TABLE}.EVENT_AuthRegistrationAgeRestriction_QTY ;;
  }

  dimension: event_auth_registration_success_qty {
    type: number
    description: "How many times did the event 'AuthRegistrationSuccess' occur."
    sql: ${TABLE}.EVENT_AuthRegistrationSuccess_QTY ;;
  }

  dimension: event_auth_wall_clicked_qty {
    type: number
    description: "How many times did the event 'AuthWallClicked' occur."
    sql: ${TABLE}.EVENT_AuthWallClicked_QTY ;;
  }

  dimension: event_auth_with_provider_clicked_qty {
    type: number
    description: "How many times did the event 'AuthWithProviderClicked' occur."
    sql: ${TABLE}.EVENT_AuthWithProviderClicked_QTY ;;
  }

  dimension: event_bookpoint_all_qty {
    type: number
    description: "How many times did any Bookpoint-named event occur."
    sql: ${TABLE}.EVENT_Bookpoint_ALL_QTY ;;
  }

  dimension: event_bookpoint_closed_qty {
    type: number
    description: "How many times did the event 'BookpointClosed' occur."
    sql: ${TABLE}.EVENT_BookpointClosed_QTY ;;
  }

  dimension: event_bookpoint_dismiss_result_view_qty {
    type: number
    description: "How many times did the event 'BookpointDismissResultView' occur."
    sql: ${TABLE}.EVENT_BookpointDismissResultView_QTY ;;
  }

  dimension: event_bookpoint_how_to_solve_qty {
    type: number
    description: "How many times did the event 'BookpointHowToSolve' occur."
    sql: ${TABLE}.EVENT_BookpointHowToSolve_QTY ;;
  }

  dimension: event_bookpoint_result_show_content_solver_qty {
    type: number
    description: "How many times did the event 'BookpointResultShow' occur, having Content SOLVER"
    sql: ${TABLE}.EVENT_BookpointResultShow_Content_SOLVER_QTY ;;
  }

  dimension: event_bookpoint_result_show_qty {
    type: number
    description: "How many times did the event 'BookpointResultShow' occur."
    sql: ${TABLE}.EVENT_BookpointResultShow_QTY ;;
  }

  dimension: event_camera_button_error_qty {
    type: number
    description: "How many times did the event 'CameraButtonError' occur."
    sql: ${TABLE}.EVENT_CameraButtonError_QTY ;;
  }

  dimension: event_camera_qty {
    type: number
    description: "How many times did the event 'Camera' occur."
    sql: ${TABLE}.EVENT_Camera_QTY ;;
  }

  dimension: event_camera_result_show_qty {
    type: number
    description: "How many times did the event 'CameraResultShow' occur."
    sql: ${TABLE}.EVENT_CameraResultShow_QTY ;;
  }

  dimension: event_camera_view_error_qty {
    type: number
    description: "How many times did the event 'CameraViewError' occur."
    sql: ${TABLE}.EVENT_CameraViewError_QTY ;;
  }

  dimension: event_editor_no_result_qty {
    type: number
    description: "How many times did the event 'EditorNoResult' occur."
    sql: ${TABLE}.EVENT_EditorNoResult_QTY ;;
  }

  dimension: event_editor_result_show_qty {
    type: number
    description: "How many times did the event 'EditorResultShow' occur."
    sql: ${TABLE}.EVENT_EditorResultShow_QTY ;;
  }

  dimension: event_enable_notifications_popup_enabled_yes_qty {
    type: number
    description: "How many times did the event 'EnableNotificationsPopup' occur, having Enabled Yes"
    sql: ${TABLE}.EVENT_EnableNotificationsPopup_Enabled_Yes_QTY ;;
  }

  dimension: event_enable_notifications_popup_qty {
    type: number
    description: "How many times did the event 'EnableNotificationsPopup' occur."
    sql: ${TABLE}.EVENT_EnableNotificationsPopup_QTY ;;
  }

  dimension: event_plus_menu_click_qty {
    type: number
    description: "How many times did the event 'PlusMenuClick' occur."
    sql: ${TABLE}.EVENT_PlusMenuClick_QTY ;;
  }

  dimension: event_remove_textbook_from_favorites_qty {
    type: number
    description: "How many times did the event 'RemoveTextbookFromFavorites' occur."
    sql: ${TABLE}.EVENT_RemoveTextbookFromFavorites_QTY ;;
  }

  dimension: event_screen_show_screen_authentication_qty {
    type: number
    description: "How many times did the event 'ScreenShow' occur, having Screen Authentication"
    sql: ${TABLE}.EVENT_ScreenShow_Screen_Authentication_QTY ;;
  }

  dimension: event_share_channel_qty {
    type: number
    description: "How many times did the event 'ShareChannel' occur."
    sql: ${TABLE}.EVENT_ShareChannel_QTY ;;
  }

  dimension: event_share_clicked_qty {
    type: number
    description: "How many times did the event 'ShareClicked' occur."
    sql: ${TABLE}.EVENT_ShareClicked_QTY ;;
  }

  dimension: event_share_status_qty {
    type: number
    description: "How many times did the event 'ShareStatus' occur."
    sql: ${TABLE}.EVENT_ShareStatus_QTY ;;
  }

  dimension: event_solution_button_click_qty {
    type: number
    description: "How many times did the event 'SolutionButtonClick' occur."
    sql: ${TABLE}.EVENT_SolutionButtonClick_QTY ;;
  }

  dimension: event_solution_button_click_type_animation_qty {
    type: number
    description: "How many times did the event 'SolutionButtonClick' occur, having Type Animation"
    sql: ${TABLE}.EVENT_SolutionButtonClick_Type_Animation_QTY ;;
  }

  dimension: event_solution_button_click_type_bookpoint_qty {
    type: number
    description: "How many times did the event 'SolutionButtonClick' occur, having Type Bookpoint"
    sql: ${TABLE}.EVENT_SolutionButtonClick_Type_Bookpoint_QTY ;;
  }

  dimension: event_solution_button_click_type_graph_qty {
    type: number
    description: "How many times did the event 'SolutionButtonClick' occur, having Type Graph"
    sql: ${TABLE}.EVENT_SolutionButtonClick_Type_Graph_QTY ;;
  }

  dimension: event_solution_button_click_type_solver_qty {
    type: number
    description: "How many times did the event 'SolutionButtonClick' occur having Type Solver"
    sql: ${TABLE}.EVENT_SolutionButtonClick_Type_Solver_QTY ;;
  }

  dimension: event_solution_helpful_answered_state_not_ok_qty {
    type: number
    description: "How many times did the event 'SolutionHelpfulAnswered' occur, having State NotOk"
    sql: ${TABLE}.EVENT_SolutionHelpfulAnswered_State_NotOk_QTY ;;
  }

  dimension: event_solution_helpful_answered_state_ok_qty {
    type: number
    description: "How many times did the event 'SolutionHelpfulAnswered' occur, having State Ok"
    sql: ${TABLE}.EVENT_SolutionHelpfulAnswered_State_Ok_QTY ;;
  }

  dimension: event_solution_show_qty {
    type: number
    description: "How many times did the event 'SolutionShow' occur."
    sql: ${TABLE}.EVENT_SolutionShow_QTY ;;
  }

  dimension: event_solution_show_type_animation_qty {
    type: number
    description: "How many times did the event 'SolutionShow' occur, having Type Animation"
    sql: ${TABLE}.EVENT_SolutionShow_Type_Animation_QTY ;;
  }

  dimension: event_solution_show_type_bookpoint_qty {
    type: number
    description: "How many times did the event 'SolutionShow' occur, having Type Bookpoint"
    sql: ${TABLE}.EVENT_SolutionShow_Type_Bookpoint_QTY ;;
  }

  dimension: event_solution_show_type_graph_qty {
    type: number
    description: "How many times did the event 'SolutionShow' occur, having Type Graph"
    sql: ${TABLE}.EVENT_SolutionShow_Type_Graph_QTY ;;
  }

  dimension: event_solution_show_type_solver_qty {
    type: number
    description: "How many times did the event 'SolutionShow' occur, having Type Solver"
    sql: ${TABLE}.EVENT_SolutionShow_Type_Solver_QTY ;;
  }

  dimension: event_solver_hint_click_qty {
    type: number
    description: "How many times did the event 'SolverHintClick' occur."
    sql: ${TABLE}.EVENT_SolverHintClick_QTY ;;
  }

  dimension: event_step_how_to_click_qty {
    type: number
    description: "How many times did the event 'StepHowToClick' occur."
    sql: ${TABLE}.EVENT_StepHowToClick_QTY ;;
  }

  dimension: event_step_level_level_2_qty {
    type: number
    description: "How many times did the event 'StepLevel' occur, having Level 2"
    sql: ${TABLE}.EVENT_StepLevel_Level_2_QTY ;;
  }

  dimension: event_step_level_level_3_qty {
    type: number
    description: "How many times did the event 'StepLevel' occur, having Level 3"
    sql: ${TABLE}.EVENT_StepLevel_Level_3_QTY ;;
  }

  dimension: event_user_engagement_qty {
    type: number
    description: "How many times did the event 'user_engagement' occur."
    sql: ${TABLE}.EVENT_user_engagement_QTY ;;
  }

  dimension: event_why_click_qty {
    type: number
    description: "How many times did the event 'WhyClick' occur."
    sql: ${TABLE}.EVENT_WhyClick_QTY ;;
  }

  dimension: session_duration {
    type: number
    description: "Time of the AppTime event."
    sql: ${TABLE}.SESSION_DURATION ;;
  }




}
