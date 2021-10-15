# The name of this view in Looker is "Tbl M App Daily Kpi"
view: m_app_daily_kpi {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `photomath-dwh-dev.DWH.TBL_M_APP_DAILY_KPI`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "All Bookpoint Events" in Explore.

  dimension: all_bookpoint_events {
    type: number
    sql: ${TABLE}.AllBookpointEvents ;;
  }

  dimension: all_bookpoint_users {
    type: number
    sql: ${TABLE}.AllBookpointUsers ;;
  }

  dimension: average_edits_per_user_equal_weights {
    type: number
    sql: ${TABLE}.AverageEditsPerUserEqualWeights ;;
  }

  dimension: average_scans_per_user_equal_weights {
    type: number
    sql: ${TABLE}.AverageScansPerUserEqualWeights ;;
  }

  dimension: avg_number_of_sessions_per_active_user {
    type: number
    sql: ${TABLE}.AvgNumberOfSessionsPerActiveUser ;;
  }

  dimension: avg_progression {
    type: number
    sql: ${TABLE}.AvgProgression ;;
  }

  dimension: bookpoint_clicked_events {
    type: number
    sql: ${TABLE}.BookpointClickedEvents ;;
  }

  dimension: bookpoint_clicked_users {
    type: number
    sql: ${TABLE}.BookpointClickedUsers ;;
  }

  dimension: bookpoint_closed_events {
    type: number
    sql: ${TABLE}.BookpointClosedEvents ;;
  }

  dimension: bookpoint_closed_users {
    type: number
    sql: ${TABLE}.BookpointClosedUsers ;;
  }

  dimension: bookpoint_dismiss_result_view_events {
    type: number
    sql: ${TABLE}.BookpointDismissResultViewEvents ;;
  }

  dimension: bookpoint_dismiss_result_view_users {
    type: number
    sql: ${TABLE}.BookpointDismissResultViewUsers ;;
  }

  dimension: bookpoint_how_to_solve_users {
    type: number
    sql: ${TABLE}.BookpointHowToSolveUsers ;;
  }

  dimension: bookpoint_result_show_events {
    type: number
    sql: ${TABLE}.BookpointResultShowEvents ;;
  }

  dimension: bookpoint_result_show_users {
    type: number
    sql: ${TABLE}.BookpointResultShowUsers ;;
  }

  dimension: camera_non_solvable_ratio {
    type: number
    sql: ${TABLE}.CameraNonSolvableRatio ;;
  }

  dimension: count_premium_solver_clicked {
    type: number
    sql: ${TABLE}.CountPremiumSolverClicked ;;
  }

  dimension: count_solution_button_click_users {
    type: number
    sql: ${TABLE}.CountSolutionButtonClickUsers ;;
  }

  dimension: count_solution_button_click_users_not_usa {
    type: number
    sql: ${TABLE}.CountSolutionButtonClickUsers_not_USA ;;
  }

  dimension: count_solution_button_click_users_usa {
    type: number
    sql: ${TABLE}.CountSolutionButtonClickUsers_USA ;;
  }

  dimension: count_solution_show_users {
    type: number
    sql: ${TABLE}.CountSolutionShowUsers ;;
  }

  dimension: count_solution_show_users_not_usa {
    type: number
    sql: ${TABLE}.CountSolutionShowUsers_not_USA ;;
  }

  dimension: count_solution_show_users_usa {
    type: number
    sql: ${TABLE}.CountSolutionShowUsers_USA ;;
  }

  dimension: daily_app_time_per_active_user {
    type: number
    sql: ${TABLE}.DailyAppTimePerActiveUser ;;
  }

  dimension: dau {
    type: number
    sql: ${TABLE}.DAU ;;
  }

  dimension: dau_not_usa {
    type: number
    sql: ${TABLE}.DAU_NOT_USA ;;
  }

  dimension: dau_usa {
    type: number
    sql: ${TABLE}.DAU_USA ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: day_of_year {
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
    sql: ${TABLE}.DAY_OF_YEAR ;;
  }

  dimension: editor_non_solvable_ratio {
    type: number
    sql: ${TABLE}.EditorNonSolvableRatio ;;
  }

  dimension: m_bookpoint_how_to_solve_events {
    type: number
    sql: ${TABLE}.mBookpointHowToSolveEvents ;;
  }

  dimension: m_number_of_animation_played {
    type: number
    sql: ${TABLE}.mNumberOfAnimationPlayed ;;
  }

  dimension: m_ratio_animation_played_to_solvables {
    type: number
    sql: ${TABLE}.mRatioAnimationPlayedToSolvables ;;
  }

  dimension: number_of_active_users {
    type: number
    sql: ${TABLE}.NumberOfActiveUsers ;;
  }

  dimension: number_of_add_textbook_to_favorites {
    type: number
    sql: ${TABLE}.NumberOfAddTextbookToFavorites ;;
  }

  dimension: number_of_camera_no_result {
    type: number
    sql: ${TABLE}.NumberOfCameraNoResult ;;
  }

  dimension: number_of_distinct_content_ids {
    type: number
    sql: ${TABLE}.NumberOfDistinctContentIDs ;;
  }

  dimension: number_of_distinct_task_ids {
    type: number
    sql: ${TABLE}.NumberOfDistinctTaskIDs ;;
  }

  dimension: number_of_editor_no_result {
    type: number
    sql: ${TABLE}.NumberOfEditorNoResult ;;
  }

  dimension: number_of_scanned_per_active_user {
    type: number
    sql: ${TABLE}.NumberOfScannedPerActiveUser ;;
  }

  dimension: number_of_scans {
    type: number
    sql: ${TABLE}.NumberOfScans ;;
  }

  dimension: number_of_second_level_steps {
    type: number
    sql: ${TABLE}.NumberOfSecondLevelSteps ;;
  }

  dimension: number_of_sessions {
    type: number
    sql: ${TABLE}.NumberOfSessions ;;
  }

  dimension: number_of_share_channel {
    type: number
    sql: ${TABLE}.NumberOfShareChannel ;;
  }

  dimension: number_of_share_clicked {
    type: number
    sql: ${TABLE}.NumberOfShareClicked ;;
  }

  dimension: number_of_share_status {
    type: number
    sql: ${TABLE}.NumberOfShareStatus ;;
  }

  dimension: number_of_solvables {
    type: number
    sql: ${TABLE}.NumberOfSolvables ;;
  }

  dimension: number_of_third_level_steps {
    type: number
    sql: ${TABLE}.NumberOfThirdLevelSteps ;;
  }

  dimension: number_of_typed {
    type: number
    sql: ${TABLE}.NumberOfTyped ;;
  }

  dimension: number_of_typed_per_active_user {
    type: number
    sql: ${TABLE}.NumberOfTypedPerActiveUser ;;
  }

  dimension: number_of_users_with_add_textbook_to_favorites {
    type: number
    sql: ${TABLE}.NumberOfUsersWithAddTextbookToFavorites ;;
  }

  dimension: number_of_users_with_animation_played {
    type: number
    sql: ${TABLE}.NumberOfUsersWithAnimationPlayed ;;
  }

  dimension: number_of_users_with_plus_menu_click {
    type: number
    sql: ${TABLE}.NumberOfUsersWithPlusMenuClick ;;
  }

  dimension: number_of_users_with_remove_textbook_from_favorites {
    type: number
    sql: ${TABLE}.NumberOfUsersWithRemoveTextbookFromFavorites ;;
  }

  dimension: number_of_users_with_second_level_steps {
    type: number
    sql: ${TABLE}.NumberOfUsersWithSecondLevelSteps ;;
  }

  dimension: number_of_users_with_third_level_steps {
    type: number
    sql: ${TABLE}.NumberOfUsersWithThirdLevelSteps ;;
  }

  dimension: percentage_of_not_us_in_dau {
    type: number
    sql: ${TABLE}.percentage_of_not_US_in_DAU ;;
  }

  dimension: percentage_of_us_in_dau {
    type: number
    sql: ${TABLE}.percentage_of_US_in_DAU ;;
  }

  dimension: percentage_of_users_with_second_level_steps {
    type: number
    sql: ${TABLE}.percentage_of_users_with_second_level_steps ;;
  }

  dimension: percentage_of_users_with_third_level_steps {
    type: number
    sql: ${TABLE}.percentage_of_users_with_third_level_steps ;;
  }

  dimension: ratio_animation_solution_click_to_show {
    type: number
    sql: ${TABLE}.RatioAnimationSolutionClickToShow ;;
  }

  dimension: ratio_bookpoint_solution_click_to_show {
    type: number
    sql: ${TABLE}.RatioBookpointSolutionClickToShow ;;
  }

  dimension: ratio_graph_solution_click_to_show {
    type: number
    sql: ${TABLE}.RatioGraphSolutionClickToShow ;;
  }

  dimension: ratio_second_level_steps_to_solvables {
    type: number
    sql: ${TABLE}.RatioSecondLevelStepsToSolvables ;;
  }

  dimension: ratio_solver_solution_click_to_show {
    type: number
    sql: ${TABLE}.RatioSolverSolutionClickToShow ;;
  }

  dimension: ratio_third_level_steps_to_solvables {
    type: number
    sql: ${TABLE}.RatioThirdLevelStepsToSolvables ;;
  }

  dimension: ratio_third_to_second_level_steps {
    type: number
    sql: ${TABLE}.RatioThirdToSecondLevelSteps ;;
  }

  dimension: remove_textbook_from_favorites {
    type: number
    sql: ${TABLE}.RemoveTextbookFromFavorites ;;
  }

  dimension: solvercount {
    type: number
    sql: ${TABLE}.SOLVERCount ;;
  }

  dimension: total100_completion {
    type: number
    sql: ${TABLE}.Total100Completion ;;
  }

  dimension: total_avg_step_progress {
    type: number
    sql: ${TABLE}.TotalAvgStepProgress ;;
  }

  dimension: total_completed_animations {
    type: number
    sql: ${TABLE}.TotalCompletedAnimations ;;
  }

  dimension: total_number_of_animations_closed {
    type: number
    sql: ${TABLE}.TotalNumberOfAnimationsClosed ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: []
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_all_bookpoint_events {
    type: sum
    hidden: yes
    sql: ${all_bookpoint_events} ;;
  }

  measure: average_all_bookpoint_events {
    type: average
    hidden: yes
    sql: ${all_bookpoint_events} ;;
  }

  measure: total_all_bookpoint_users {
    type: sum
    hidden: yes
    sql: ${all_bookpoint_users} ;;
  }

  measure: average_all_bookpoint_users {
    type: average
    hidden: yes
    sql: ${all_bookpoint_users} ;;
  }

  measure: total_average_edits_per_user_equal_weights {
    type: sum
    hidden: yes
    sql: ${average_edits_per_user_equal_weights} ;;
  }

  measure: average_average_edits_per_user_equal_weights {
    type: average
    hidden: yes
    sql: ${average_edits_per_user_equal_weights} ;;
  }

  measure: total_average_scans_per_user_equal_weights {
    type: sum
    hidden: yes
    sql: ${average_scans_per_user_equal_weights} ;;
  }

  measure: average_average_scans_per_user_equal_weights {
    type: average
    hidden: yes
    sql: ${average_scans_per_user_equal_weights} ;;
  }

  measure: total_avg_number_of_sessions_per_active_user {
    type: sum
    hidden: yes
    sql: ${avg_number_of_sessions_per_active_user} ;;
  }

  measure: average_avg_number_of_sessions_per_active_user {
    type: average
    hidden: yes
    sql: ${avg_number_of_sessions_per_active_user} ;;
  }

  measure: total_avg_progression {
    type: sum
    hidden: yes
    sql: ${avg_progression} ;;
  }

  measure: average_avg_progression {
    type: average
    hidden: yes
    sql: ${avg_progression} ;;
  }

  measure: total_bookpoint_clicked_events {
    type: sum
    hidden: yes
    sql: ${bookpoint_clicked_events} ;;
  }

  measure: average_bookpoint_clicked_events {
    type: average
    hidden: yes
    sql: ${bookpoint_clicked_events} ;;
  }

  measure: total_bookpoint_clicked_users {
    type: sum
    hidden: yes
    sql: ${bookpoint_clicked_users} ;;
  }

  measure: average_bookpoint_clicked_users {
    type: average
    hidden: yes
    sql: ${bookpoint_clicked_users} ;;
  }

  measure: total_bookpoint_closed_events {
    type: sum
    hidden: yes
    sql: ${bookpoint_closed_events} ;;
  }

  measure: average_bookpoint_closed_events {
    type: average
    hidden: yes
    sql: ${bookpoint_closed_events} ;;
  }

  measure: total_bookpoint_closed_users {
    type: sum
    hidden: yes
    sql: ${bookpoint_closed_users} ;;
  }

  measure: average_bookpoint_closed_users {
    type: average
    hidden: yes
    sql: ${bookpoint_closed_users} ;;
  }

  measure: total_bookpoint_dismiss_result_view_events {
    type: sum
    hidden: yes
    sql: ${bookpoint_dismiss_result_view_events} ;;
  }

  measure: average_bookpoint_dismiss_result_view_events {
    type: average
    hidden: yes
    sql: ${bookpoint_dismiss_result_view_events} ;;
  }

  measure: total_bookpoint_dismiss_result_view_users {
    type: sum
    hidden: yes
    sql: ${bookpoint_dismiss_result_view_users} ;;
  }

  measure: average_bookpoint_dismiss_result_view_users {
    type: average
    hidden: yes
    sql: ${bookpoint_dismiss_result_view_users} ;;
  }

  measure: total_bookpoint_how_to_solve_users {
    type: sum
    hidden: yes
    sql: ${bookpoint_how_to_solve_users} ;;
  }

  measure: average_bookpoint_how_to_solve_users {
    type: average
    hidden: yes
    sql: ${bookpoint_how_to_solve_users} ;;
  }

  measure: total_bookpoint_result_show_events {
    type: sum
    hidden: yes
    sql: ${bookpoint_result_show_events} ;;
  }

  measure: average_bookpoint_result_show_events {
    type: average
    hidden: yes
    sql: ${bookpoint_result_show_events} ;;
  }

  measure: total_bookpoint_result_show_users {
    type: sum
    hidden: yes
    sql: ${bookpoint_result_show_users} ;;
  }

  measure: average_bookpoint_result_show_users {
    type: average
    hidden: yes
    sql: ${bookpoint_result_show_users} ;;
  }

  measure: total_camera_non_solvable_ratio {
    type: sum
    hidden: yes
    sql: ${camera_non_solvable_ratio} ;;
  }

  measure: average_camera_non_solvable_ratio {
    type: average
    hidden: yes
    sql: ${camera_non_solvable_ratio} ;;
  }

  measure: total_count_premium_solver_clicked {
    type: sum
    hidden: yes
    sql: ${count_premium_solver_clicked} ;;
  }

  measure: average_count_premium_solver_clicked {
    type: average
    hidden: yes
    sql: ${count_premium_solver_clicked} ;;
  }

  measure: total_count_solution_button_click_users {
    type: sum
    hidden: yes
    sql: ${count_solution_button_click_users} ;;
  }

  measure: average_count_solution_button_click_users {
    type: average
    hidden: yes
    sql: ${count_solution_button_click_users} ;;
  }

  measure: total_count_solution_button_click_users_not_usa {
    type: sum
    hidden: yes
    sql: ${count_solution_button_click_users_not_usa} ;;
  }

  measure: average_count_solution_button_click_users_not_usa {
    type: average
    hidden: yes
    sql: ${count_solution_button_click_users_not_usa} ;;
  }

  measure: total_count_solution_button_click_users_usa {
    type: sum
    hidden: yes
    sql: ${count_solution_button_click_users_usa} ;;
  }

  measure: average_count_solution_button_click_users_usa {
    type: average
    hidden: yes
    sql: ${count_solution_button_click_users_usa} ;;
  }

  measure: total_count_solution_show_users {
    type: sum
    hidden: yes
    sql: ${count_solution_show_users} ;;
  }

  measure: average_count_solution_show_users {
    type: average
    hidden: yes
    sql: ${count_solution_show_users} ;;
  }

  measure: total_count_solution_show_users_not_usa {
    type: sum
    hidden: yes
    sql: ${count_solution_show_users_not_usa} ;;
  }

  measure: average_count_solution_show_users_not_usa {
    type: average
    hidden: yes
    sql: ${count_solution_show_users_not_usa} ;;
  }

  measure: total_count_solution_show_users_usa {
    type: sum
    hidden: yes
    sql: ${count_solution_show_users_usa} ;;
  }

  measure: average_count_solution_show_users_usa {
    type: average
    hidden: yes
    sql: ${count_solution_show_users_usa} ;;
  }

  measure: total_daily_app_time_per_active_user {
    type: sum
    hidden: yes
    sql: ${daily_app_time_per_active_user} ;;
  }

  measure: average_daily_app_time_per_active_user {
    type: average
    hidden: yes
    sql: ${daily_app_time_per_active_user} ;;
  }

  measure: total_dau {
    type: sum
    hidden: yes
    sql: ${dau} ;;
  }

  measure: average_dau {
    type: average
    hidden: yes
    sql: ${dau} ;;
  }

  measure: total_dau_not_usa {
    type: sum
    hidden: yes
    sql: ${dau_not_usa} ;;
  }

  measure: average_dau_not_usa {
    type: average
    hidden: yes
    sql: ${dau_not_usa} ;;
  }

  measure: total_dau_usa {
    type: sum
    hidden: yes
    sql: ${dau_usa} ;;
  }

  measure: average_dau_usa {
    type: average
    hidden: yes
    sql: ${dau_usa} ;;
  }

  measure: total_editor_non_solvable_ratio {
    type: sum
    hidden: yes
    sql: ${editor_non_solvable_ratio} ;;
  }

  measure: average_editor_non_solvable_ratio {
    type: average
    hidden: yes
    sql: ${editor_non_solvable_ratio} ;;
  }

  measure: total_m_bookpoint_how_to_solve_events {
    type: sum
    hidden: yes
    sql: ${m_bookpoint_how_to_solve_events} ;;
  }

  measure: average_m_bookpoint_how_to_solve_events {
    type: average
    hidden: yes
    sql: ${m_bookpoint_how_to_solve_events} ;;
  }

  measure: total_m_number_of_animation_played {
    type: sum
    hidden: yes
    sql: ${m_number_of_animation_played} ;;
  }

  measure: average_m_number_of_animation_played {
    type: average
    hidden: yes
    sql: ${m_number_of_animation_played} ;;
  }

  measure: total_m_ratio_animation_played_to_solvables {
    type: sum
    hidden: yes
    sql: ${m_ratio_animation_played_to_solvables} ;;
  }

  measure: average_m_ratio_animation_played_to_solvables {
    type: average
    hidden: yes
    sql: ${m_ratio_animation_played_to_solvables} ;;
  }

  measure: total_number_of_active_users {
    type: sum
    hidden: yes
    sql: ${number_of_active_users} ;;
  }

  measure: average_number_of_active_users {
    type: average
    hidden: yes
    sql: ${number_of_active_users} ;;
  }

  measure: total_number_of_add_textbook_to_favorites {
    type: sum
    hidden: yes
    sql: ${number_of_add_textbook_to_favorites} ;;
  }

  measure: average_number_of_add_textbook_to_favorites {
    type: average
    hidden: yes
    sql: ${number_of_add_textbook_to_favorites} ;;
  }

  measure: total_number_of_camera_no_result {
    type: sum
    hidden: yes
    sql: ${number_of_camera_no_result} ;;
  }

  measure: average_number_of_camera_no_result {
    type: average
    hidden: yes
    sql: ${number_of_camera_no_result} ;;
  }

  measure: total_number_of_distinct_content_ids {
    type: sum
    hidden: yes
    sql: ${number_of_distinct_content_ids} ;;
  }

  measure: average_number_of_distinct_content_ids {
    type: average
    hidden: yes
    sql: ${number_of_distinct_content_ids} ;;
  }

  measure: total_number_of_distinct_task_ids {
    type: sum
    hidden: yes
    sql: ${number_of_distinct_task_ids} ;;
  }

  measure: average_number_of_distinct_task_ids {
    type: average
    hidden: yes
    sql: ${number_of_distinct_task_ids} ;;
  }

  measure: total_number_of_editor_no_result {
    type: sum
    hidden: yes
    sql: ${number_of_editor_no_result} ;;
  }

  measure: average_number_of_editor_no_result {
    type: average
    hidden: yes
    sql: ${number_of_editor_no_result} ;;
  }

  measure: total_number_of_scanned_per_active_user {
    type: sum
    hidden: yes
    sql: ${number_of_scanned_per_active_user} ;;
  }

  measure: average_number_of_scanned_per_active_user {
    type: average
    hidden: yes
    sql: ${number_of_scanned_per_active_user} ;;
  }

  measure: total_number_of_scans {
    type: sum
    hidden: yes
    sql: ${number_of_scans} ;;
  }

  measure: average_number_of_scans {
    type: average
    hidden: yes
    sql: ${number_of_scans} ;;
  }

  measure: total_number_of_second_level_steps {
    type: sum
    hidden: yes
    sql: ${number_of_second_level_steps} ;;
  }

  measure: average_number_of_second_level_steps {
    type: average
    hidden: yes
    sql: ${number_of_second_level_steps} ;;
  }

  measure: total_number_of_sessions {
    type: sum
    hidden: yes
    sql: ${number_of_sessions} ;;
  }

  measure: average_number_of_sessions {
    type: average
    hidden: yes
    sql: ${number_of_sessions} ;;
  }

  measure: total_number_of_share_channel {
    type: sum
    hidden: yes
    sql: ${number_of_share_channel} ;;
  }

  measure: average_number_of_share_channel {
    type: average
    hidden: yes
    sql: ${number_of_share_channel} ;;
  }

  measure: total_number_of_share_clicked {
    type: sum
    hidden: yes
    sql: ${number_of_share_clicked} ;;
  }

  measure: average_number_of_share_clicked {
    type: average
    hidden: yes
    sql: ${number_of_share_clicked} ;;
  }

  measure: total_number_of_share_status {
    type: sum
    hidden: yes
    sql: ${number_of_share_status} ;;
  }

  measure: average_number_of_share_status {
    type: average
    hidden: yes
    sql: ${number_of_share_status} ;;
  }

  measure: total_number_of_solvables {
    type: sum
    hidden: yes
    sql: ${number_of_solvables} ;;
  }

  measure: average_number_of_solvables {
    type: average
    hidden: yes
    sql: ${number_of_solvables} ;;
  }

  measure: total_number_of_third_level_steps {
    type: sum
    hidden: yes
    sql: ${number_of_third_level_steps} ;;
  }

  measure: average_number_of_third_level_steps {
    type: average
    hidden: yes
    sql: ${number_of_third_level_steps} ;;
  }

  measure: total_number_of_typed {
    type: sum
    hidden: yes
    sql: ${number_of_typed} ;;
  }

  measure: average_number_of_typed {
    type: average
    hidden: yes
    sql: ${number_of_typed} ;;
  }

  measure: total_number_of_typed_per_active_user {
    type: sum
    hidden: yes
    sql: ${number_of_typed_per_active_user} ;;
  }

  measure: average_number_of_typed_per_active_user {
    type: average
    hidden: yes
    sql: ${number_of_typed_per_active_user} ;;
  }

  measure: total_number_of_users_with_add_textbook_to_favorites {
    type: sum
    hidden: yes
    sql: ${number_of_users_with_add_textbook_to_favorites} ;;
  }

  measure: average_number_of_users_with_add_textbook_to_favorites {
    type: average
    hidden: yes
    sql: ${number_of_users_with_add_textbook_to_favorites} ;;
  }

  measure: total_number_of_users_with_animation_played {
    type: sum
    hidden: yes
    sql: ${number_of_users_with_animation_played} ;;
  }

  measure: average_number_of_users_with_animation_played {
    type: average
    hidden: yes
    sql: ${number_of_users_with_animation_played} ;;
  }

  measure: total_number_of_users_with_plus_menu_click {
    type: sum
    hidden: yes
    sql: ${number_of_users_with_plus_menu_click} ;;
  }

  measure: average_number_of_users_with_plus_menu_click {
    type: average
    hidden: yes
    sql: ${number_of_users_with_plus_menu_click} ;;
  }

  measure: total_number_of_users_with_remove_textbook_from_favorites {
    type: sum
    hidden: yes
    sql: ${number_of_users_with_remove_textbook_from_favorites} ;;
  }

  measure: average_number_of_users_with_remove_textbook_from_favorites {
    type: average
    hidden: yes
    sql: ${number_of_users_with_remove_textbook_from_favorites} ;;
  }

  measure: total_number_of_users_with_second_level_steps {
    type: sum
    hidden: yes
    sql: ${number_of_users_with_second_level_steps} ;;
  }

  measure: average_number_of_users_with_second_level_steps {
    type: average
    hidden: yes
    sql: ${number_of_users_with_second_level_steps} ;;
  }

  measure: total_number_of_users_with_third_level_steps {
    type: sum
    hidden: yes
    sql: ${number_of_users_with_third_level_steps} ;;
  }

  measure: average_number_of_users_with_third_level_steps {
    type: average
    hidden: yes
    sql: ${number_of_users_with_third_level_steps} ;;
  }

  measure: total_percentage_of_not_us_in_dau {
    type: sum
    hidden: yes
    sql: ${percentage_of_not_us_in_dau} ;;
  }

  measure: average_percentage_of_not_us_in_dau {
    type: average
    hidden: yes
    sql: ${percentage_of_not_us_in_dau} ;;
  }

  measure: total_percentage_of_us_in_dau {
    type: sum
    hidden: yes
    sql: ${percentage_of_us_in_dau} ;;
  }

  measure: average_percentage_of_us_in_dau {
    type: average
    hidden: yes
    sql: ${percentage_of_us_in_dau} ;;
  }

  measure: total_percentage_of_users_with_second_level_steps {
    type: sum
    hidden: yes
    sql: ${percentage_of_users_with_second_level_steps} ;;
  }

  measure: average_percentage_of_users_with_second_level_steps {
    type: average
    hidden: yes
    sql: ${percentage_of_users_with_second_level_steps} ;;
  }

  measure: total_percentage_of_users_with_third_level_steps {
    type: sum
    hidden: yes
    sql: ${percentage_of_users_with_third_level_steps} ;;
  }

  measure: average_percentage_of_users_with_third_level_steps {
    type: average
    hidden: yes
    sql: ${percentage_of_users_with_third_level_steps} ;;
  }

  measure: total_ratio_animation_solution_click_to_show {
    type: sum
    hidden: yes
    sql: ${ratio_animation_solution_click_to_show} ;;
  }

  measure: average_ratio_animation_solution_click_to_show {
    type: average
    hidden: yes
    sql: ${ratio_animation_solution_click_to_show} ;;
  }

  measure: total_ratio_bookpoint_solution_click_to_show {
    type: sum
    hidden: yes
    sql: ${ratio_bookpoint_solution_click_to_show} ;;
  }

  measure: average_ratio_bookpoint_solution_click_to_show {
    type: average
    hidden: yes
    sql: ${ratio_bookpoint_solution_click_to_show} ;;
  }

  measure: total_ratio_graph_solution_click_to_show {
    type: sum
    hidden: yes
    sql: ${ratio_graph_solution_click_to_show} ;;
  }

  measure: average_ratio_graph_solution_click_to_show {
    type: average
    hidden: yes
    sql: ${ratio_graph_solution_click_to_show} ;;
  }

  measure: total_ratio_second_level_steps_to_solvables {
    type: sum
    hidden: yes
    sql: ${ratio_second_level_steps_to_solvables} ;;
  }

  measure: average_ratio_second_level_steps_to_solvables {
    type: average
    hidden: yes
    sql: ${ratio_second_level_steps_to_solvables} ;;
  }

  measure: total_ratio_solver_solution_click_to_show {
    type: sum
    hidden: yes
    sql: ${ratio_solver_solution_click_to_show} ;;
  }

  measure: average_ratio_solver_solution_click_to_show {
    type: average
    hidden: yes
    sql: ${ratio_solver_solution_click_to_show} ;;
  }

  measure: total_ratio_third_level_steps_to_solvables {
    type: sum
    hidden: yes
    sql: ${ratio_third_level_steps_to_solvables} ;;
  }

  measure: average_ratio_third_level_steps_to_solvables {
    type: average
    hidden: yes
    sql: ${ratio_third_level_steps_to_solvables} ;;
  }

  measure: total_ratio_third_to_second_level_steps {
    type: sum
    hidden: yes
    sql: ${ratio_third_to_second_level_steps} ;;
  }

  measure: average_ratio_third_to_second_level_steps {
    type: average
    hidden: yes
    sql: ${ratio_third_to_second_level_steps} ;;
  }

  measure: total_remove_textbook_from_favorites {
    type: sum
    hidden: yes
    sql: ${remove_textbook_from_favorites} ;;
  }

  measure: average_remove_textbook_from_favorites {
    type: average
    hidden: yes
    sql: ${remove_textbook_from_favorites} ;;
  }

  measure: total_solvercount {
    type: sum
    hidden: yes
    sql: ${solvercount} ;;
  }

  measure: average_solvercount {
    type: average
    hidden: yes
    sql: ${solvercount} ;;
  }

  measure: total_total100_completion {
    type: sum
    hidden: yes
    sql: ${total100_completion} ;;
  }

  measure: average_total100_completion {
    type: average
    hidden: yes
    sql: ${total100_completion} ;;
  }

  measure: total_total_avg_step_progress {
    type: sum
    hidden: yes
    sql: ${total_avg_step_progress} ;;
  }

  measure: average_total_avg_step_progress {
    type: average
    hidden: yes
    sql: ${total_avg_step_progress} ;;
  }

  measure: total_total_completed_animations {
    type: sum
    hidden: yes
    sql: ${total_completed_animations} ;;
  }

  measure: average_total_completed_animations {
    type: average
    hidden: yes
    sql: ${total_completed_animations} ;;
  }

  measure: total_total_number_of_animations_closed {
    type: sum
    hidden: yes
    sql: ${total_number_of_animations_closed} ;;
  }

  measure: average_total_number_of_animations_closed {
    type: average
    hidden: yes
    sql: ${total_number_of_animations_closed} ;;
  }
}
