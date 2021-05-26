view: tbl_mongodb_task {
  sql_table_name: `photomath-dwh-dev.STAGE.TBL_MONGODB_TASK`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: _id__oid {
    type: string
    sql: ${TABLE}._id.oid ;;
    group_label: "ID"
    group_item_label: "Oid"
  }

  dimension: annotated {
    type: string
    sql: ${TABLE}.annotated ;;
  }

  dimension: annotator {
    type: string
    sql: ${TABLE}.annotator ;;
  }

  dimension: clone_id {
    type: string
    sql: ${TABLE}.cloneId ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }

  dimension: completed {
    type: string
    sql: ${TABLE}.completed ;;
  }

  dimension: content_id {
    type: string
    sql: ${TABLE}.contentId ;;
  }

  dimension_group: created_ {
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
    sql: ${TABLE}.created.date ;;
    #X# Invalid LookML inside "dimension_group": {"group_label":null}
    group_item_label: "Created"
  }

  dimension: example_id {
    type: string
    sql: ${TABLE}.exampleId ;;
  }

  dimension: format {
    type: string
    sql: ${TABLE}.format ;;
  }

  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }

  dimension: math_field {
    type: string
    sql: ${TABLE}.mathField ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: proposed_math_field {
    type: string
    sql: ${TABLE}.proposedMathField ;;
  }

  dimension: reject_message {
    type: string
    sql: ${TABLE}.rejectMessage ;;
  }

  dimension: reject_reason {
    type: string
    sql: ${TABLE}.rejectReason ;;
  }

  dimension: result_id {
    type: string
    sql: ${TABLE}.resultId ;;
  }

  dimension: roi__height {
    type: number
    sql: ${TABLE}.roi.height ;;
    group_label: "Roi"
    group_item_label: "Height"
  }

  dimension: roi__width {
    type: number
    sql: ${TABLE}.roi.width ;;
    group_label: "Roi"
    group_item_label: "Width"
  }

  dimension: roi__x {
    type: number
    sql: ${TABLE}.roi.x ;;
    group_label: "Roi"
    group_item_label: "X"
  }

  dimension: roi__y {
    type: number
    sql: ${TABLE}.roi.y ;;
    group_label: "Roi"
    group_item_label: "Y"
  }

  dimension: similars {
    type: string
    sql: ${TABLE}.similars ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: step {
    type: string
    sql: ${TABLE}.step ;;
  }

  dimension: steps {
    hidden: yes
    sql: ${TABLE}.steps ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: task_id {
    type: string
    sql: ${TABLE}.taskId ;;
  }

  dimension_group: updated_ {
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
    sql: ${TABLE}.updated.date ;;
    #X# Invalid LookML inside "dimension_group": {"group_label":null}
    group_item_label: "Updated"
  }

  dimension: user {
    type: string
    sql: ${TABLE}.user ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

view: tbl_mongodb_task__steps {
  dimension: clone_id {
    type: number
    sql: ${TABLE}.cloneId ;;
  }

  dimension: content_id {
    type: string
    sql: ${TABLE}.contentId ;;
  }

  dimension_group: created_ {
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
    sql: ${TABLE}.created.date ;;
    #X# Invalid LookML inside "dimension_group": {"group_label":null}
    group_item_label: "Created"
  }

  dimension: example_id {
    type: string
    sql: ${TABLE}.exampleId ;;
  }

  dimension: format {
    hidden: yes
    sql: ${TABLE}.format ;;
  }

  dimension: math_field {
    type: string
    sql: ${TABLE}.mathField ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: reason {
    hidden: yes
    sql: ${TABLE}.reason ;;
  }

  dimension: result_id {
    type: string
    sql: ${TABLE}.resultId ;;
  }

  dimension: similars {
    hidden: yes
    sql: ${TABLE}.similars ;;
  }

  dimension: tags {
    hidden: yes
    sql: ${TABLE}.tags ;;
  }

  dimension: task_id {
    type: number
    sql: ${TABLE}.taskId ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.user ;;
  }

  dimension: validation_status {
    type: string
    sql: ${TABLE}.validationStatus ;;
  }
}

view: tbl_mongodb_task__steps__tags {
  dimension: tbl_mongodb_task__steps__tags {
    type: string
    sql: tbl_mongodb_task__steps__tags ;;
  }
}

view: tbl_mongodb_task__steps__reason {
  dimension: tbl_mongodb_task__steps__reason {
    type: string
    sql: tbl_mongodb_task__steps__reason ;;
  }
}

view: tbl_mongodb_task__steps__format {
  dimension: tbl_mongodb_task__steps__format {
    type: string
    sql: tbl_mongodb_task__steps__format ;;
  }
}

view: tbl_mongodb_task__steps__similars {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }
}
