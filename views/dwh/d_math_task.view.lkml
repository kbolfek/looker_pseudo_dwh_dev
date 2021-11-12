# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: d_math_task {
  hidden: yes

  join: d_math_task__clone_math_task_id {
    view_label: "Tbl D Math Task: Clone Math Task Id"
    sql: LEFT JOIN UNNEST(${d_math_task.clone_math_task_id}) as tbl_d_math_task__clone_math_task_id ;;
    relationship: one_to_many
  }
}

# The name of this view in Looker is "Tbl D Math Task"
view: d_math_task {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `DWH.TBL_D_MATH_TASK`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Annotation Status" in Explore.

  dimension: annotation_status {
    type: string
    description: "Annotation status of the task: ANNOTATED = task is annotated, ANNOTATION_OK =task is annotated and verified. The order is ANNOTATED->ANNOTATED_OK"
    sql: ${TABLE}.ANNOTATION_STATUS ;;
  }

  dimension: book_chapter_id {
    type: number
    description: "Foreign key to table D_BOOK_CHAPTER"
    sql: ${TABLE}.BOOK_CHAPTER_ID ;;
  }

  dimension: book_id {
    type: number
    description: "Foreign key to table D_BOOK"
    sql: ${TABLE}.BOOK_ID ;;
  }

  dimension: book_page_id {
    type: number
    description: "Foreign key to table D_BOOK_PAGE"
    sql: ${TABLE}.BOOK_PAGE_ID ;;
  }

  dimension: caption {
    type: string
    description: "Caption of the task in the book"
    sql: ${TABLE}.CAPTION ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: clone_math_task_id {
    hidden: yes
    sql: ${TABLE}.CLONE_MATH_TASK_ID ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: completed_dt {
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
    sql: ${TABLE}.COMPLETED_DT ;;
  }

  dimension_group: created_dt {
    type: time
    description: "Date and time of creating the task"
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

  dimension: expression {
    type: string
    description: "Math expression of the task"
    sql: ${TABLE}.EXPRESSION ;;
  }

  dimension: is_solved {
    type: yesno
    sql: ${TABLE}.IS_SOLVED ;;
  }

  dimension: is_top_skipped {
    type: yesno
    description: "Indicates if the job (and hence the task as well) related to the task was skipped more than 100 times"
    sql: ${TABLE}.IS_TOP_SKIPPED ;;
  }

  dimension: math_area {
    type: string
    description: "Math area the task belongs to"
    sql: ${TABLE}.MATH_AREA ;;
  }

  dimension: math_task_id {
    type: number
    description: "Surrogate key of a math task created by the source database"
    sql: ${TABLE}.MATH_TASK_ID ;;
  }

  dimension: math_task_type {
    type: string
    description: "Math task type"
    sql: ${TABLE}.MATH_TASK_TYPE ;;
  }

  dimension: outline {
    type: string
    description: "Outline of the task in the book"
    sql: ${TABLE}.OUTLINE ;;
  }

  dimension: priority {
    type: number
    description: "Priority of the task"
    sql: ${TABLE}.PRIORITY ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_priority {
    type: sum
    sql: ${priority} ;;
  }

  measure: average_priority {
    type: average
    sql: ${priority} ;;
  }

  dimension: solution {
    type: string
    description: "Solution of the task"
    sql: ${TABLE}.SOLUTION ;;
  }

  dimension: source {
    type: string
    description: "Source of the task - Bookpoint or Professor"
    sql: ${TABLE}.SOURCE ;;
  }

  dimension: text {
    type: string
    description: "Text content of the task"
    sql: ${TABLE}.TEXT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

# The name of this view in Looker is "Tbl D Math Task Clone Math Task ID"
view: d_math_task__clone_math_task_id {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "D Math Task Clone Math Task ID" in Explore.

  dimension: d_math_task__clone_math_task_id {
    type: number
    description: "IDs of clones of the Math Task"
    sql: d_math_task__clone_math_task_id ;;
  }
}
