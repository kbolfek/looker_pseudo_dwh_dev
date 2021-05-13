view: d_book {
  sql_table_name: `DWH.TBL_D_BOOK`
    ;;

  dimension: author {
    type: string
    sql: ${TABLE}.AUTHOR ;;
  }

  dimension: book_group_id {
    type: number
    sql: ${TABLE}.BOOK_GROUP_ID ;;
  }

  dimension: book_id {
    type: number
    sql: ${TABLE}.BOOK_ID ;;
  }

  dimension: book_publisher_id {
    type: number
    sql: ${TABLE}.BOOK_PUBLISHER_ID ;;
  }

  dimension: edition {
    type: string
    sql: ${TABLE}.EDITION ;;
  }

  dimension: education_level {
    type: string
    sql: ${TABLE}.EDUCATION_LEVEL ;;
  }

  dimension: grade {
    type: string
    sql: ${TABLE}.GRADE ;;
  }

  dimension: is_ocr_done {
    type: yesno
    sql: ${TABLE}.IS_OCR_DONE ;;
  }

  dimension: isbn {
    type: string
    sql: ${TABLE}.ISBN ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.LANGUAGE ;;
  }

  dimension: license {
    type: string
    sql: ${TABLE}.LICENSE ;;
  }

  dimension: math_area {
    type: string
    sql: ${TABLE}.MATH_AREA ;;
  }

  dimension_group: published_dt {
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
    sql: ${TABLE}.PUBLISHED_DT ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: style {
    type: string
    sql: ${TABLE}.STYLE ;;
  }

  dimension: subtitle {
    type: string
    sql: ${TABLE}.SUBTITLE ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.TITLE ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.YEAR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
