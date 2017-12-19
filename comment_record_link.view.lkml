view: comment_record_link {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.CommentRecordLink ;;

  dimension: comment_pk {
    type: string
    sql: ${TABLE}.CommentPk ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: record_pk {
    type: string
    sql: ${TABLE}.RecordPk ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
