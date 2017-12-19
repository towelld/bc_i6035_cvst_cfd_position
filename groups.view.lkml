view: groups {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.Groups ;;

  dimension: acc_code {
    type: string
    sql: ${TABLE}.AccCode ;;
  }

  dimension: active_status {
    type: number
    sql: ${TABLE}.ActiveStatus ;;
  }

  dimension: assigned_to {
    type: string
    sql: ${TABLE}.AssignedTo ;;
  }

  dimension: confidence {
    type: string
    sql: ${TABLE}.Confidence ;;
  }

  dimension: date_time_stamp {
    type: string
    sql: ${TABLE}.DateTimeStamp ;;
  }

  dimension: do_not_purge_before {
    type: string
    sql: ${TABLE}.DoNotPurgeBefore ;;
  }

  dimension: facing_pb {
    type: string
    sql: ${TABLE}.FacingPB ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
  }

  dimension: iccy {
    type: string
    sql: ${TABLE}.ICcy ;;
  }

  dimension: isin {
    type: string
    sql: ${TABLE}.ISIN ;;
  }

  dimension: match_name {
    type: string
    sql: ${TABLE}.MatchName ;;
  }

  dimension: match_status {
    type: number
    sql: ${TABLE}.MatchStatus ;;
  }

  dimension: net_quantity {
    type: number
    sql: ${TABLE}.NetQuantity ;;
  }

  dimension: num_recs {
    type: number
    sql: ${TABLE}.NumRecs ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: sccy {
    type: string
    sql: ${TABLE}.SCcy ;;
  }

  dimension: sl {
    type: string
    sql: ${TABLE}.SL ;;
  }

  dimension: time_stamp_zone_id {
    type: number
    sql: ${TABLE}.TimeStampZoneId ;;
  }

  measure: count {
    type: count
    drill_fields: [group_name, match_name]
  }
}
