view: ignored_contact {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.IgnoredContact ;;

  dimension: active_status {
    type: number
    sql: ${TABLE}.ActiveStatus ;;
  }

  dimension: buyer_id {
    type: string
    sql: ${TABLE}.BuyerId ;;
  }

  dimension: contact_email {
    type: string
    sql: ${TABLE}.ContactEmail ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
