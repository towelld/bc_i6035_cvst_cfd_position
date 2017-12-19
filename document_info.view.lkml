view: document_info {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.DocumentInfo ;;

  dimension: document_group_id {
    type: string
    sql: ${TABLE}.DocumentGroupId ;;
  }

  dimension: length {
    type: number
    sql: ${TABLE}.Length ;;
  }

  dimension: mime_type {
    type: string
    sql: ${TABLE}.MimeType ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: uri {
    type: string
    sql: ${TABLE}.Uri ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
