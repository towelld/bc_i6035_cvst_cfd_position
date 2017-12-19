view: links {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.Links ;;

  dimension: active_status {
    type: number
    sql: ${TABLE}.ActiveStatus ;;
  }

  dimension: created {
    type: string
    sql: ${TABLE}.Created ;;
  }

  dimension: first {
    type: string
    sql: ${TABLE}.First ;;
  }

  dimension: link_type {
    type: string
    sql: ${TABLE}.LinkType ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: removed {
    type: string
    sql: ${TABLE}.Removed ;;
  }

  dimension: second {
    type: string
    sql: ${TABLE}.Second ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.Version ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
