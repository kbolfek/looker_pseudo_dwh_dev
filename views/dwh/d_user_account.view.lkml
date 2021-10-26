# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
#explore: d_user_account {
#  hidden: yes

#  join: d_user_account__external_id {
#    view_label: "D User Account: External Id"
#    sql: LEFT JOIN UNNEST(${d_user_account.external_id}) as d_user_account__external_id ;;
#    relationship: one_to_many
#  }

#  join: d_user_account__user_account_parent_id {
#    view_label: "D User Account: User Account Parent Id"
#    sql: LEFT JOIN UNNEST(${d_user_account.user_account_parent_id}) as d_user_account__user_account_parent_id ;;
#    relationship: one_to_many
#  }

#   join: d_user_account__first_registered_on_device_id {
#     view_label: "D User Account: First Registered On Device Id"
#     sql: LEFT JOIN UNNEST(${d_user_account.first_registered_on_device_id}) as d_user_account__first_registered_on_device_id ;;
#     relationship: one_to_many
#   }
# }

# The name of this view in Looker is "D User Account"
view: d_user_account {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `DWH.TBL_D_USER_ACCOUNT`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.

  dimension: user_account_id {
    type: string
    sql: ${TABLE}.USER_ACCOUNT_ID ;;
  }

  dimension: user_account_parent_id {
    hidden: yes
    sql: ${TABLE}.USER_ACCOUNT_PARENT_ID ;;
  }

  dimension: iam {
    type: string
    sql: ${TABLE}.IAM ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.AGE ;;
  }

  dimension: country_id {
    type: number
    sql: ${TABLE}.COUNTRY_ID ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.COUNTRY_NAME ;;
  }

  dimension: is_registered {
    type: yesno
    sql: ${TABLE}.IS_REGISTERED ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: first_registered_on_device_id {
    hidden: yes
    sql: ${TABLE}.FIRST_REGISTERED_ON_DEVICE_ID ;;
  }

  dimension: external_id {
    hidden: yes
    sql: ${TABLE}.EXTERNAL_ID ;;
  }

  dimension: subscription_id {
    type: string
    sql: ${TABLE}.SUBSCRIPTION_ID ;;
  }

  dimension: subscription_provider {
    type: string
    sql: ${TABLE}.SUBSCRIPTION_PROVIDER ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.PRODUCT_ID ;;
  }

  dimension_group: subscription_start_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SUBSCRIPTION_START_DT ;;
  }

  dimension_group: subscription_expiration_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SUBSCRIPTION_EXPIRATION_DT ;;
  }

  dimension: is_subscription_auto_renewing {
    type: yesno
    sql: ${TABLE}.IS_SUBSCRIPTION_AUTO_RENEWING ;;
  }

  dimension: is_subscription_in_trial_period {
    type: yesno
    sql: ${TABLE}.IS_SUBSCRIPTION_IN_TRIAL_PERIOD ;;
  }

  dimension: is_subscriber {
    type: yesno
    sql: ${TABLE}.IS_SUBSCRIBER ;;
  }

  dimension: is_valid {
    type: yesno
    sql: ${TABLE}.IS_VALID ;;
  }






  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CREATED_DT ;;
  }

  dimension_group: updated_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.UPDATED_DT ;;
  }


}

# The name of this view in Looker is "D User Account External ID"
view: d_user_account__external_id {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Tbl D User Account External ID" in Explore.

  dimension: d_user_account__external_id {
    type: string
    sql: d_user_account__external_id ;;
  }
}

# The name of this view in Looker is "D User Account User Account Parent ID"
view: d_user_account__user_account_parent_id {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Tbl D User Account User Account Parent ID" in Explore.

  dimension: d_user_account__user_account_parent_id {
    type: string
    sql: d_user_account__user_account_parent_id ;;
  }
}

# The name of this view in Looker is "D User Account First Registered on Device ID"
view: d_user_account__first_registered_on_device_id {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Tbl D User Account First Registered on Device ID" in Explore.

  dimension: d_user_account__first_registered_on_device_id {
    type: string
    sql: d_user_account__first_registered_on_device_id ;;
  }
}
