view: file_row_errors {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.FileRowErrors ;;

  dimension: error_code {
    type: number
    sql: ${TABLE}.ErrorCode ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}.ErrorMessage ;;
  }

  dimension: file_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.FileId ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: row_number {
    type: number
    sql: ${TABLE}.RowNumber ;;
  }

  measure: count {
    type: count
    drill_fields: [files.id, files.file_name]
  }
}
