view: d_math_expert_activity_type {
  sql_table_name: `DWH.TBL_D_MATH_EXPERT_ACTIVITY_TYPE`
    ;;

  dimension: math_expert_activity_type {
    primary_key: yes
    type: string
    description: "Type of activity happening on the platform, triggered by math expert taking on a job."
    sql: ${TABLE}.MATH_EXPERT_ACTIVITY_TYPE ;;
  }

  dimension: math_expert_activity_type_description {
    type: string
    description: "Description of the activity"
    sql: ${TABLE}.MATH_EXPERT_ACTIVITY_TYPE_DESCRIPTION ;;
  }

# CUSTOM FIELDS
# all additional attributes and measures which do not exist in BQ matching table
# adding a description is mandatory

  measure: count {
    type: count
    drill_fields: []
  }
}
