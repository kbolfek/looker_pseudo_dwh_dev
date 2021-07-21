view: d_math_expert {
  sql_table_name: `DWH.TBL_D_MATH_EXPERT`
    ;;

  dimension: billing_platform {
    type: string
    description: "Billing platform"
    sql: ${TABLE}.BILLING_PLATFORM ;;
  }

  dimension: billing_status {
    type: string
    description: "Math expert's billing status - suspended, active, notEligible, onHold"
    sql: ${TABLE}.BILLING_STATUS ;;
  }

  dimension: country_id {
    type: number
    description: "Foreign key to table D_COUNTRY"
    sql: ${TABLE}.COUNTRY_ID ;;
  }

  dimension: created_auth_provider {
    type: string
    description: "Initial provider math expert used for first account authentication (google, facebook, local)"
    sql: ${TABLE}.CREATED_AUTH_PROVIDER ;;
    link: {
      label: "Search on Google"
      url: "http://www.google.com/search?q={{ value }}"
    }
  }

  dimension_group: email_verified_dt {
    type: time
    description: "Date and time of math expert's email verification"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.EMAIL_VERIFIED_DT ;;
  }

  dimension_group: first_contribution_dt {
    type: time
    description: "Date and time of the math expert's first contribution (task solved) on Marketplace"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FIRST_CONTRIBUTION_DT ;;
  }

  dimension: is_age_confirmed {
    type: yesno
    description: "Indicates whether math expert confirmed his age"
    sql: ${TABLE}.IS_AGE_CONFIRMED ;;
  }

  dimension: is_deleted {
    type: yesno
    description: "Indicates whether user's account is deleted or not"
    sql: ${TABLE}.IS_DELETED ;;
  }

  dimension: is_enabled {
    type: yesno
    description: "Indicates whether user is enabled or not"
    sql: ${TABLE}.IS_ENABLED ;;
  }

  dimension: is_internal {
    type: yesno
    description: "Indicates whether math expert is actually internal"
    sql: ${TABLE}.IS_INTERNAL ;;
    # link: {
    #   label: "Drill down to Look"
    #   url: "https://photomath.cloud.looker.com/looks/74?&f[math_expert.is_internal]={{ value | url_encode }}&f[country.country_name]={{ _filters['country.country_name'] | url_encode }}"
    # }
  }

  dimension: is_locked {
    type: yesno
    description: "Indicates whether user's account is locked or not"
    sql: ${TABLE}.IS_LOCKED ;;
  }

  dimension: last_auth_provider {
    type: string
    description: "Last provider math expert used for account authentication (google, facebook, local)"
    sql: ${TABLE}.LAST_AUTH_PROVIDER ;;
  }

  dimension_group: last_login_dt {
    type: time
    description: "Date and time of math expert's last login session"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LAST_LOGIN_DT ;;
  }

  dimension_group: locked_until_dt {
    type: time
    description: "If user's account is locked, shows date and time until which it's locked"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LOCKED_UNTIL_DT ;;
  }

  dimension: math_expert_id {
    primary_key: yes
    type: number
    description: "Surrogate key of a math expert created by the source database"
    sql: ${TABLE}.MATH_EXPERT_ID ;;
  }

  dimension: referred_by_math_expert_id {
    type: number
    description: "ID of the math expert who referred the given math expert (in case of referral, the registration is done via unique referral link provided by marketplace)"
    sql: ${TABLE}.REFERRED_BY_MATH_EXPERT_ID ;;
  }

  dimension_group: registered_from_dt {
    type: time
    description: "Date and time of math expert's account creation"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.REGISTERED_FROM_DT ;;
  }

  dimension_group: registered_until_dt {
    type: time
    description: "Date and time when math expert was deleted (if deleted)"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.REGISTERED_UNTIL_DT ;;
  }

  dimension_group: top_performer_dt {
    type: time
    description: "Date and time when math expert was assigned as a top performer"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.TOP_PERFORMER_DT ;;
  }

  dimension: utm_campaign {
    type: string
    description: "Identifies a specific product promotion or strategic campaign"
    sql: ${TABLE}.UTM_CAMPAIGN ;;
  }

  dimension: utm_content {
    type: string
    description: "Identifies what specifically was clicked to bring the user to the site, such as a banner ad or a text link"
    sql: ${TABLE}.UTM_CONTENT ;;
  }

  dimension: utm_medium {
    type: string
    description: "Identifies what type of link was used, such as cost per click or email"
    sql: ${TABLE}.UTM_MEDIUM ;;
  }

  dimension: utm_source {
    type: string
    description: "Identifies which site sent the traffic (i.e. given math expert)"
    sql: ${TABLE}.UTM_SOURCE ;;
  }

  dimension: utm_term {
    type: string
    description: "Identifies search terms"
    sql: ${TABLE}.UTM_TERM ;;
  }

# CUSTOM FIELDS
# all additional attributes and measures which do not exist in BQ matching table
# adding a description is mandatory

  measure: count {
    type: count
    drill_fields: [billing_status, number_of_experts]
    link: {
      label: "Show by Billing Status" #or your label of choice
      url: "
      {% assign vis_config = '{
        \"x_axis_gridlines\":false
        \"y_axis_gridlines\":false
        \"show_view_names\":false
        \"show_y_axis_labels\":true
        \"show_y_axis_ticks\":true
        \"y_axis_tick_density\":\"default\"
        \"y_axis_tick_density_custom\":5
        \"show_x_axis_label\":true
        \"show_x_axis_ticks\":true
        \"y_axis_scale_mode\":\"linear\"
        \"x_axis_reversed\":false
        \"y_axis_reversed\":false
        \"plot_size_by_field\":false
        \"trellis\":\"\"
        \"stacking\":\"\"
        \"limit_displayed_rows\":false
        \"legend_position\":\"center\"
        \"point_style\":\"none\"
        \"show_value_labels\":true
        \"label_density\":25
        \"x_axis_scale\":\"auto\"
        \"y_axis_combined\":true
        \"ordering\":\"none\"
        \"show_null_labels\":false
        \"show_totals_labels\":false
        \"show_silhouette\":false
        \"totals_color\":\"#808080\"
        \"series_types\":{}
        \"type\":\"looker_bar\"
        \"defaults_version\":1
      }' %}
      {{ link }}&vis_config={{ vis_config | encode_uri }}&toggle=dat,pik,vis&limit=5000"
    }
  }

  # measure: count_test {
  #   type: count
  #   drill_fields: [billing_status, number_of_experts]
  #   link: {
  #     label: "Show by Billing Status" #or your label of choice
  #     url:"{{ link }}&limit=20"
  #   }
  # }

  measure: count_test {
    type: count
    #sql: ${math_expert_id} ;;
    drill_fields: [email_verified_dt_date, number_of_experts]
    link: {
      label: "Show as scatter plot"
      url: "
      {% assign vis_config = '{
      \"stacking\" : \"\",
      \"show_value_labels\" : false,
      \"label_density\" : 25,
      \"legend_position\" : \"center\",
      \"x_axis_gridlines\" : true,
      \"y_axis_gridlines\" : true,
      \"show_view_names\" : false,
      \"limit_displayed_rows\" : false,
      \"y_axis_combined\" : true,
      \"show_y_axis_labels\" : true,
      \"show_y_axis_ticks\" : true,
      \"y_axis_tick_density\" : \"default\",
      \"y_axis_tick_density_custom\": 5,
      \"show_x_axis_label\" : false,
      \"show_x_axis_ticks\" : true,
      \"x_axis_scale\" : \"auto\",
      \"y_axis_scale_mode\" : \"linear\",
      \"show_null_points\" : true,
      \"point_style\" : \"circle\",
      \"ordering\" : \"none\",
      \"show_null_labels\" : false,
      \"show_totals_labels\" : false,
      \"show_silhouette\" : false,
      \"totals_color\" : \"#808080\",
      \"type\" : \"looker_scatter\",
      \"interpolation\" : \"linear\",
      \"series_types\" : {},
      \"colors\": [
      \"palette: Santa Cruz\"
      ],
      \"series_colors\" : {},
      \"x_axis_datetime_tick_count\": null,
      \"trend_lines\": [
      {
      \"color\" : \"#000000\",
      \"label_position\" : \"left\",
      \"period\" : 30,
      \"regression_type\" : \"average\",
      \"series_index\" : 1,
      \"show_label\" : true,
      \"label_type\" : \"string\",
      \"label\" : \"30 day moving average\"
      }
      ]
      }' %}
      {{ link }}&vis_config={{ vis_config | encode_uri }}&toggle=dat,pik,vis&limit=5000"
    }
  }


  measure: number_of_experts {
    type: count_distinct
    sql: ${math_expert_id} ;;
    }

}
