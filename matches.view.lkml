view: matches {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.Matches ;;

  dimension: finished {
    type: string
    sql: ${TABLE}.Finished ;;
  }

  dimension: job_number {
    type: number
    sql: ${TABLE}.JobNumber ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: started {
    type: string
    sql: ${TABLE}.Started ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.Status ;;
  }

  dimension: time_stamp_zone_id {
    type: number
    sql: ${TABLE}.TimeStampZoneId ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
