view: audit_group_record_link {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.AuditGroupRecordLink ;;

  dimension: group_pk {
    type: string
    sql: ${TABLE}.GroupPk ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: record_pk {
    type: string
    sql: ${TABLE}.RecordPk ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
