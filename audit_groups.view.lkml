view: audit_groups {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.AuditGroups ;;

  dimension: action_type_id {
    type: number
    sql: ${TABLE}.ActionTypeId ;;
  }

  dimension: active_status {
    type: number
    sql: ${TABLE}.ActiveStatus ;;
  }

  dimension: confidence {
    type: string
    sql: ${TABLE}.Confidence ;;
  }

  dimension: date_time_stamp {
    type: string
    sql: ${TABLE}.DateTimeStamp ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
  }

  dimension: match_name {
    type: string
    sql: ${TABLE}.MatchName ;;
  }

  dimension: match_status {
    type: number
    sql: ${TABLE}.MatchStatus ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: time_stamp_zone_id {
    type: number
    sql: ${TABLE}.TimeStampZoneId ;;
  }

  measure: count {
    type: count
    drill_fields: [group_name, match_name]
  }
}
