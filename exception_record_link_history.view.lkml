view: exception_record_link_history {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.ExceptionRecordLinkHistory ;;

  dimension: action_id {
    type: number
    sql: ${TABLE}.ActionId ;;
  }

  dimension: active_status {
    type: number
    sql: ${TABLE}.ActiveStatus ;;
  }

  dimension: date_time_stamp {
    type: string
    sql: ${TABLE}.DateTimeStamp ;;
  }

  dimension: exception_pk {
    type: string
    sql: ${TABLE}.ExceptionPk ;;
  }

  dimension: history_pk {
    type: string
    sql: ${TABLE}.HistoryPk ;;
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
