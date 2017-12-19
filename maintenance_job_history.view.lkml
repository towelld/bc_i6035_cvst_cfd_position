view: maintenance_job_history {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.MaintenanceJobHistory ;;

  dimension: finished {
    type: string
    sql: ${TABLE}.Finished ;;
  }

  dimension: job_id {
    type: string
    sql: ${TABLE}.JobId ;;
  }

  dimension: started {
    type: string
    sql: ${TABLE}.Started ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.Status ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.UserName ;;
  }

  measure: count {
    type: count
    drill_fields: [user_name]
  }
}
