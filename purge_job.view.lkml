view: purge_job {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.PurgeJob ;;

  dimension: job_id {
    type: string
    sql: ${TABLE}.JobId ;;
  }

  dimension: purge_date {
    type: string
    sql: ${TABLE}.PurgeDate ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
