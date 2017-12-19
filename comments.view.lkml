view: comments {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.Comments ;;

  dimension: active_status {
    type: number
    sql: ${TABLE}.ActiveStatus ;;
  }

  dimension: content {
    type: string
    sql: ${TABLE}.Content ;;
  }

  dimension: date_time_stamp {
    type: string
    sql: ${TABLE}.DateTimeStamp ;;
  }

  dimension: document_link {
    type: string
    sql: ${TABLE}.DocumentLink ;;
  }

  dimension: length {
    type: number
    sql: ${TABLE}.Length ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.SessionId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
