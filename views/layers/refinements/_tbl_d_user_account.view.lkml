include: "/views/dwh/*.view"

view: +tbl_d_user_account {

  measure: number_of_registered_users {
    description: "Number of users that registered and created their account"
    type: count_distinct
    sql: ${user_account_id} ;;
    value_format_name: decimal_0
  }

  dimension: age_buckets {
    description: "Users' age divided into custom buckets"
    type: tier
    style: integer
    sql: ${age} ;;
    tiers: [0, 13, 19, 25, 33, 41, 51, 61]
    link: {
      label: "Explore Age by More Granular Distribution"
      url: "https://photomath.cloud.looker.com/looks/224?&f[tbl_d_user_account.age_buckets]={{ value }}"
    }
  }


}
