view: audit_task_outcomes {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.AuditTaskOutcomes ;;

  dimension: audit_pk {
    type: string
    sql: ${TABLE}.AuditPk ;;
  }

  dimension: completed {
    type: string
    sql: ${TABLE}.Completed ;;
  }

  dimension: date_time_stamp {
    type: string
    sql: ${TABLE}.DateTimeStamp ;;
  }

  dimension: outcome {
    type: string
    sql: ${TABLE}.Outcome ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.SessionId ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.Status ;;
  }

  dimension: task_fqn {
    type: string
    sql: ${TABLE}.TaskFqn ;;
  }

  dimension: time_stamp_zone_id {
    type: number
    sql: ${TABLE}.TimeStampZoneId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
