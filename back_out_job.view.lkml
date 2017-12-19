view: back_out_job {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.BackOutJob ;;

  dimension: job_id {
    type: string
    sql: ${TABLE}.JobId ;;
  }

  dimension: match_job_id {
    type: string
    sql: ${TABLE}.MatchJobId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
