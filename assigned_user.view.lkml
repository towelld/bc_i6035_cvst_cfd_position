view: assigned_user {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.AssignedUser ;;

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: task_id {
    type: string
    sql: ${TABLE}.TaskId ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.UserId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
