view: exception_history {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.ExceptionHistory ;;

  dimension: active_status {
    type: number
    sql: ${TABLE}.ActiveStatus ;;
  }

  dimension: assigned_to {
    type: string
    sql: ${TABLE}.AssignedTo ;;
  }

  dimension: audit_pk {
    type: string
    sql: ${TABLE}.AuditPk ;;
  }

  dimension: closed {
    type: string
    sql: ${TABLE}.Closed ;;
  }

  dimension: closed_zone_id {
    type: number
    sql: ${TABLE}.ClosedZoneId ;;
  }

  dimension: date_time_stamp {
    type: string
    sql: ${TABLE}.DateTimeStamp ;;
  }

  dimension: do_not_purge_before {
    type: string
    sql: ${TABLE}.DoNotPurgeBefore ;;
  }

  dimension: exception_status {
    type: number
    sql: ${TABLE}.ExceptionStatus ;;
  }

  dimension: exception_style {
    type: number
    sql: ${TABLE}.ExceptionStyle ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.ExternalId ;;
  }

  dimension: history_pk {
    type: string
    sql: ${TABLE}.HistoryPk ;;
  }

  dimension: history_type {
    type: number
    sql: ${TABLE}.HistoryType ;;
  }

  dimension: impact {
    type: number
    sql: ${TABLE}.Impact ;;
  }

  dimension: impact_currency {
    type: string
    sql: ${TABLE}.ImpactCurrency ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: raised {
    type: string
    sql: ${TABLE}.Raised ;;
  }

  dimension: raised_zone_id {
    type: number
    sql: ${TABLE}.RaisedZoneId ;;
  }

  dimension: reason_code {
    type: number
    sql: ${TABLE}.ReasonCode ;;
  }

  dimension: resolution_code {
    type: number
    sql: ${TABLE}.ResolutionCode ;;
  }

  dimension: resolved {
    type: string
    sql: ${TABLE}.Resolved ;;
  }

  dimension: resolved_zone_id {
    type: number
    sql: ${TABLE}.ResolvedZoneId ;;
  }

  dimension: time_stamp_zone_id {
    type: number
    sql: ${TABLE}.TimeStampZoneId ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.Version ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
