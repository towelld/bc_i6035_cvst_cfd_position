view: user_session_audit {
  sql_table_name: bluecrest.UserSessionAudit ;;

  dimension: client_type {
    type: string
    sql: ${TABLE}.ClientType ;;
  }

  dimension: date_time_stamp {
    type: string
    sql: ${TABLE}.DateTimeStamp ;;
  }

  dimension: full_user_name {
    type: string
    sql: ${TABLE}.FullUserName ;;
  }

  dimension: originating_ip {
    type: string
    sql: ${TABLE}.OriginatingIp ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: session_action_id {
    type: number
    sql: ${TABLE}.SessionActionId ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.SessionId ;;
  }

  dimension: time_stamp_zone_id {
    type: number
    sql: ${TABLE}.TimeStampZoneId ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.UserName ;;
  }

  dimension: user_pk {
    type: string
    sql: ${TABLE}.UserPk ;;
  }

  dimension: user_type {
    type: string
    sql: ${TABLE}.UserType ;;
  }

  measure: count {
    type: count
    drill_fields: [user_name, full_user_name]
  }
}
