view: persisted_states {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.PersistedStates ;;

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.Type ;;
  }

  dimension: xml {
    type: string
    sql: ${TABLE}.Xml ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
