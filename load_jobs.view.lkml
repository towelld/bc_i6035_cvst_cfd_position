view: load_jobs {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.LoadJobs ;;

  dimension: date_time_stamp {
    type: string
    sql: ${TABLE}.DateTimeStamp ;;
  }

  dimension: feed_name {
    type: string
    sql: ${TABLE}.FeedName ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.FileName ;;
  }

  dimension: load_duration {
    type: number
    sql: ${TABLE}.LoadDuration ;;
  }

  dimension: load_id {
    type: number
    sql: ${TABLE}.LoadId ;;
  }

  dimension: number_of_discarded_records {
    type: number
    sql: ${TABLE}.NumberOfDiscardedRecords ;;
  }

  dimension: number_of_loaded_records {
    type: number
    sql: ${TABLE}.NumberOfLoadedRecords ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: rec_name {
    type: string
    sql: ${TABLE}.RecName ;;
  }

  dimension: rec_operational_cycle {
    type: string
    sql: ${TABLE}.RecOperationalCycle ;;
  }

  dimension: time_stamp_zone_id {
    type: number
    sql: ${TABLE}.TimeStampZoneId ;;
  }

  measure: count {
    type: count
    drill_fields: [feed_name, file_name, rec_name]
  }
}
