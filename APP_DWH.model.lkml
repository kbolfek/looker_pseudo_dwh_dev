connection: "bq_photomath_dwh_dev"

label: "App Dwh"

include: "/views/dwh/*.view.lkml"                # include all views in the views/ folder in this project
include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard


#explore: m_events_counts_day_granular {}

explore: tbl_m_app_event_count {
  label: "Events Daily Summary"
  view_label: "Events Summary"

  join: tbl_d_user_account {
    view_label: "User Account"
    type: left_outer
    relationship: many_to_one
    sql_on: ${tbl_m_app_event_count.user_account_id} = ${tbl_d_user_account.user_account_id} ;;
  }

  always_filter: {
    filters: [tbl_m_app_event_count.event_client_logged_date: "2021-01-01 00:00 to 2021-01-15 00:00"]
  }
}
