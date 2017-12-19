view: user_audit {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.UserAudit ;;

  dimension: action_approved {
    type: number
    sql: ${TABLE}.ActionApproved ;;
  }

  dimension: action_id {
    type: number
    sql: ${TABLE}.ActionId ;;
  }

  dimension: active_status {
    type: number
    sql: ${TABLE}.ActiveStatus ;;
  }

  dimension: approval_process_id {
    type: string
    sql: ${TABLE}.ApprovalProcessId ;;
  }

  dimension: comment_pk {
    type: string
    sql: ${TABLE}.CommentPk ;;
  }

  dimension: date_time_stamp {
    type: string
    sql: ${TABLE}.DateTimeStamp ;;
  }

  dimension: link_pk {
    type: string
    sql: ${TABLE}.LinkPk ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.SessionId ;;
  }

  dimension: user_pk {
    type: string
    sql: ${TABLE}.UserPk ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
