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

  dimension: action {
    type: string
    sql: case ${TABLE}.ActionId
          when 0 then 'Comment'
          when 1 then 'Accept'
          when 2 then 'Comment'
          when 3 then 'Assign Object'
          when 4 then 'Assign task'
          when 5 then 'Cancel'
          when 6 then 'Cancel Exception'
          when 7 then 'Close Exception'
          when 8 then 'Create Task'
          when 9 then 'Match'
          when 10 then 'Partial'
          when 11 then 'Open Exception'
          when 12 then 'Suggest'
          when 13 then 'Reject'
          when 14 then 'Resolve Exception'
          when 15 then 'Unmatch Partial'
          when 16 then 'Add to Exception'
          when 17 then 'Remove from Exception'
          when 18 then 'Move Exception'
          when 19 then 'Unresolve Exception'
          when 20 then 'Escalate Exception'
          when 21 then 'Unmatch'
          when 22 then 'Create Reference'
          when 23 then 'Delete Reference'
          when 24 then 'Update Reference'
          when 25 then 'Uncancel'
          when 26 then 'Update Exception'
          when 27 then 'Update group'
          when 28 then 'Update Record'
          when 29 then 'Split Record'
          when 30 then 'Create Record'
          when 31 then 'Resolve Match'
          when 32 then 'Reported Match'
          when 34 then 'Disapprove Match Group'
          when 35 then 'AR Match'
          when 36 then 'AR Accept'
          when 37 then 'AR Group Approve'
          when 38 then 'AR Group Reject'
          when 39 then 'Known Exception'
          when 40 then 'Reopen Exception'
          when 41 then 'AR Unmatch'
          when 42 then 'Match with Allocations'
          when 44 then 'Maintenance Purge'
          when 45 then 'Maintenance Backout'
          when 48 then 'Clean Records'
          when 49 then 'Upload Records'
          when 50 then 'Generate Feed'
          when 52 then 'Discard'
          when 53 then 'Discard Inactive'
          when 54 then 'Reinstate Inactive'
          when 55 then 'Link'
          when 56 then 'Unlink'
          when 57 then 'Control Sign Off'
          when 58 then 'AR Link'
          when 59 then 'AR Unlink'
        end;;
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

  dimension_group: date_time_stamp {
    type: time
    timeframes: [date, week, month, time]
    convert_tz: no
    sql: ${TABLE}.DateTimeStamp ;;
    label: "Action Date"
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
