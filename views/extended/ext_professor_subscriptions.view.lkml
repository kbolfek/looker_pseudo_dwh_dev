include: "/views/temp/*.view"

view: ext_professor_subscriptions {
  extends: [dtbl_professor_subscriptions]

  measure: number_of_users_subscribed {
    description: "Number of users that subscribed from Professor paywall"
    type: count_distinct
    sql: ${device_id} ;;
    filters: [subscription_event: "ConversionToPurchase"]
  }

  measure: number_of_users_churned {
    description: "Number of users that churned after subscribing from Professor paywall"
    type: count_distinct
    sql: ${device_id} ;;
    filters: [subscription_event: "Churned"]
  }

  dimension: product_price {
    type: number
    sql:
      CASE
        WHEN ${subscription_product} = 'monthly' THEN 9.99
        WHEN ${subscription_product} = 'yearly' THEN 59.99
        WHEN ${subscription_product} = 'semi-annual' THEN 49.99
      END;;
  }

  measure: subscription_revenue {
    type: sum
    sql: ${product_price} ;;
    filters: [subscription_event: "ConversionToPurchase"]
    value_format_name: usd_0
  }
}
