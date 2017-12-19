view: assigned_role {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.AssignedRole ;;

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: role_id {
    type: string
    sql: ${TABLE}.RoleId ;;
  }

  dimension: task_id {
    type: string
    sql: ${TABLE}.TaskId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
