# The name of this view in Looker is "M Math Task Clone"
view: m_math_task_clone {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `DWH.TBL_M_MATH_TASK_CLONE`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Clone Math Task ID" in Explore.

  dimension: clone_math_task_id {
    type: number
    description: "Foreign key to D_MATH_TASK. Task which is the clone of the original task task"
    sql: ${TABLE}.CLONE_MATH_TASK_ID ;;
  }

  dimension: math_task_id {
    type: number
    description: "Foreign key to D_MATH_TASK. Task which is the original task"
    sql: ${TABLE}.MATH_TASK_ID ;;
  }

}
