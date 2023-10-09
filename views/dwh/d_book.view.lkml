view: d_book {
  sql_table_name: `DWH.TBL_D_BOOK`
    ;;

  dimension: author {
    type: string
    description: "Author of the book"
    sql: ${TABLE}.AUTHOR ;;
  }

  dimension: book_group_id {
    type: number
    description: "Foreign key to D_BOOK_GROUP"
    sql: ${TABLE}.BOOK_GROUP_ID ;;
  }

  dimension: book_id {
    primary_key: yes
    type: number
    description: "Surrogate key of a book created by the source database"
    sql: ${TABLE}.BOOK_ID ;;
  }
  #TESTTEST

  dimension: book_publisher_id {
    type: number
    description: "Foreign key to D_BOOK_PUBLISHER"
    sql: ${TABLE}.BOOK_PUBLISHER_ID ;;
  }

  dimension: edition {
    type: string
    description: "Book edition"
    sql: ${TABLE}.EDITION ;;
  }

  dimension: education_level {
    type: string
    description: "Level of education (high school, college, elementary)"
    sql: ${TABLE}.EDUCATION_LEVEL ;;
  }

  dimension: grade {
    type: string
    description: "Grade the book belongs to"
    sql: ${TABLE}.GRADE ;;
  }

  dimension: is_ocr_done {
    type: yesno
    description: "Indicator for finishing OCR for the book"
    sql: ${TABLE}.IS_OCR_DONE ;;
  }

  dimension: isbn {
    type: string
    description: "International Standard Book Number (intended to be unique)"
    sql: ${TABLE}.ISBN ;;
  }

  dimension: language {
    type: string
    description: "Language of the book"
    sql: ${TABLE}.LANGUAGE ;;
  }

  dimension: license {
    type: string
    sql: ${TABLE}.LICENSE ;;
  }

  dimension: math_area {
    type: string
    description: "Math area(s) the book covers"
    sql: ${TABLE}.MATH_AREA ;;
  }


  dimension: status {
    type: string
    description: "Status of the book on Platform: 'IDENTIFIED','ORDERED','SCANNING','SCANNED','INGESTING','FAILED_INGESTION','INGESTED','APPROVED_INGESTION','PREPARED','ANNOTATING','ANNOTATED','CATEGORIZING','CATEGORIZED','CREATING','PUBLISHED'(former 'CREATED' or 'APPROVED')"
    sql: ${TABLE}.STATUS ;;
  }

  dimension: style {
    type: string
    sql: ${TABLE}.STYLE ;;
  }

  dimension: subtitle {
    type: string
    description: "Subtitle of the book"
    sql: ${TABLE}.SUBTITLE ;;
  }

  dimension: title {
    type: string
    description: "Title of the book"
    sql: ${TABLE}.TITLE ;;
  }

  dimension: year {
    type: number
    description: "Year of book publishing"
    sql: ${TABLE}.YEAR ;;
  }

# CUSTOM FIELDS
# all additional attributes and measures which do not exist in BQ matching table
# adding a description is mandatory

  measure: count {
    type: count
    drill_fields: []
  }
}
