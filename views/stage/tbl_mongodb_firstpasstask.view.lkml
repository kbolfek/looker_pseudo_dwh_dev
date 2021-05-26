# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: tbl_mongodb_firstpasstask {
  hidden: yes

  join: tbl_mongodb_firstpasstask__data__similars {
    view_label: "Tbl Mongodb Firstpasstask: Data Similars"
    sql: LEFT JOIN UNNEST(${tbl_mongodb_firstpasstask.data__similars}) as tbl_mongodb_firstpasstask__data__similars ;;
    relationship: one_to_many
  }

  join: tbl_mongodb_firstpasstask__data__reject_reason {
    view_label: "Tbl Mongodb Firstpasstask: Data Rejectreason"
    sql: LEFT JOIN UNNEST(${tbl_mongodb_firstpasstask.data__reject_reason}) as tbl_mongodb_firstpasstask__data__reject_reason ;;
    relationship: one_to_many
  }
}

view: tbl_mongodb_firstpasstask {
  sql_table_name: `photomath-dwh-dev.STAGE.TBL_MONGODB_FIRSTPASSTASK`
    ;;

  dimension: _id__oid {
    type: string
    sql: ${TABLE}._id.oid ;;
    group_label: "ID"
    group_item_label: "Oid"
  }

  dimension: data__comment {
    type: string
    sql: ${TABLE}.data.comment ;;
    group_label: "Data"
    group_item_label: "Comment"
  }

  dimension_group: data__completed_ {
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
    sql: ${TABLE}.data.completed.date ;;
    group_label: "Data"
    group_item_label: "Completed"
  }

  dimension_group: data__created_ {
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
    sql: ${TABLE}.data.created.date ;;
    group_label: "Data"
    group_item_label: "Created"
  }

  dimension: data__id {
    type: string
    sql: ${TABLE}.data.id ;;
    group_label: "Data"
    group_item_label: "ID"
  }

  dimension: data__image {
    type: string
    sql: ${TABLE}.data.image ;;
    group_label: "Data"
    group_item_label: "Image"
  }

  dimension: data__price {
    type: number
    sql: ${TABLE}.data.price ;;
    group_label: "Data"
    group_item_label: "Price"
  }

  dimension: data__proposed_math_field {
    type: string
    sql: ${TABLE}.data.proposedMathField ;;
    group_label: "Data"
    group_item_label: "Proposed Math Field"
  }

  dimension: data__reject_reason {
    hidden: yes
    sql: ${TABLE}.data.rejectReason ;;
    group_label: "Data"
    group_item_label: "Reject Reason"
  }

  dimension: data__roi__height {
    type: number
    sql: ${TABLE}.data.roi.height ;;
    group_label: "Data Roi"
    group_item_label: "Height"
  }

  dimension: data__roi__width {
    type: number
    sql: ${TABLE}.data.roi.width ;;
    group_label: "Data Roi"
    group_item_label: "Width"
  }

  dimension: data__roi__x {
    type: number
    sql: ${TABLE}.data.roi.x ;;
    group_label: "Data Roi"
    group_item_label: "X"
  }

  dimension: data__roi__y {
    type: number
    sql: ${TABLE}.data.roi.y ;;
    group_label: "Data Roi"
    group_item_label: "Y"
  }

  dimension: data__similars {
    hidden: yes
    sql: ${TABLE}.data.similars ;;
    group_label: "Data"
    group_item_label: "Similars"
  }

  dimension: data__status {
    type: string
    sql: ${TABLE}.data.status ;;
    group_label: "Data"
    group_item_label: "Status"
  }

  dimension: data__step {
    type: string
    sql: ${TABLE}.data.step ;;
    group_label: "Data"
    group_item_label: "Step"
  }

  dimension_group: data__updated_ {
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
    sql: ${TABLE}.data.updated.date ;;
    group_label: "Data"
    group_item_label: "Updated"
  }

  dimension: data__user {
    type: string
    sql: ${TABLE}.data.user ;;
    group_label: "Data"
    group_item_label: "User"
  }

  dimension: data__version {
    type: number
    sql: ${TABLE}.data.version ;;
    group_label: "Data"
    group_item_label: "Version"
  }

  dimension_group: reserved_until_ {
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
    sql: ${TABLE}.reservedUntil.date ;;
    #X# Invalid LookML inside "dimension_group": {"group_label":null}
    group_item_label: "Reserved Until"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: tbl_mongodb_firstpasstask__data__similars {
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

view: tbl_mongodb_firstpasstask__data__reject_reason {
  dimension: tbl_mongodb_firstpasstask__data__reject_reason {
    type: string
    sql: tbl_mongodb_firstpasstask__data__reject_reason ;;
  }
}
