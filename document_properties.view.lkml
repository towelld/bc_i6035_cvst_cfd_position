view: document_properties {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.DocumentProperties ;;

  dimension: document_pk {
    type: string
    sql: ${TABLE}.DocumentPk ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: property_value {
    type: string
    sql: ${TABLE}.PropertyValue ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
