view: file_upload_audit {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.FileUploadAudit ;;

  dimension: modified_file_name {
    type: string
    sql: ${TABLE}.ModifiedFileName ;;
  }

  dimension: original_file_name {
    type: string
    sql: ${TABLE}.OriginalFileName ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  measure: count {
    type: count
    drill_fields: [original_file_name, modified_file_name]
  }
}
