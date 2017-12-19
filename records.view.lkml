view: records {
  sql_table_name: BluecrestI6035CvstCfdPositionRec.Records ;;

  dimension: acc_code {
    type: string
    sql: ${TABLE}.AccCode ;;
  }

  dimension: active_status {
    type: number
    sql: ${TABLE}.ActiveStatus ;;
  }

  dimension: allow_purge {
    type: string
    sql: ${TABLE}.AllowPurge ;;
  }

  dimension: assigned_to {
    type: string
    sql: isnull(substring(${TABLE}.AssignedTo,charindex('.',${TABLE}.AssignedTo)+1,200),'Unassigned');;
  }

  dimension: bloomberg_id {
    type: string
    sql: ${TABLE}.BloombergId ;;
  }

  dimension: business_key {
    type: string
    sql: ${TABLE}.Business_Key ;;
  }

  dimension: businesskey {
    type: string
    sql: ${TABLE}.BusinessKey ;;
  }

  dimension: cusip {
    type: string
    sql: ${TABLE}.CUSIP ;;
  }

  dimension_group: date_time_created {
    type: time
    timeframes: [date, week, month, time]
    convert_tz: no
    sql: ${TABLE}.DateTimeCreated ;;
  }

  dimension: do_not_purge_before {
    type: string
    sql: ${TABLE}.DoNotPurgeBefore ;;
  }

  dimension: facing_pb {
    type: string
    sql: ${TABLE}.FacingPB ;;
  }

  dimension: fund {
    type: string
    sql: ${TABLE}.Fund ;;
  }

  dimension: has_comments {
    type: string
    sql: ${TABLE}.HasComments ;;
  }

  dimension: iccy {
    type: string
    sql: ${TABLE}.ICcy ;;
  }

  dimension_group: import {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ImportDate ;;
  }

  dimension: isin {
    type: string
    sql: ${TABLE}.ISIN ;;
  }

  dimension: last_action_by {
    type: string
    sql: ${TABLE}.LastActionBy ;;
  }

  dimension: last_action_date {
    type: string
    sql: ${TABLE}.LastActionDate ;;
  }

  dimension: last_action_id {
    type: number
    sql: ${TABLE}.LastActionId ;;
  }

  dimension: last_action_type {
    type: number
    sql: ${TABLE}.LastActionType ;;
  }

  dimension: last_updated {
    type: string
    sql: ${TABLE}.LastUpdated ;;
  }

  dimension: latest_comment {
    type: string
    sql: ${TABLE}.LatestComment ;;
  }

  dimension: match_status {
    type: string
    sql: case ${TABLE}.ActiveStatus when 0 then 'Unmatched' when 1 then 'Matched' end;;
  }

  dimension: op_type {
    type: string
    sql: ${TABLE}.OpType ;;
  }

  dimension: orig_acc_code {
    type: string
    sql: ${TABLE}.OrigAccCode ;;
  }

  dimension: orig_sl {
    type: string
    sql: ${TABLE}.OrigSL ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: product_desc {
    type: string
    sql: ${TABLE}.ProductDesc ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: sccy {
    type: string
    sql: ${TABLE}.SCcy ;;
  }

  dimension: sedol {
    type: string
    sql: ${TABLE}.SEDOL ;;
  }

  dimension: sl {
    type: string
    sql: ${TABLE}.SL ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.System ;;
  }

  dimension: transaction_status {
    type: number
    sql: ${TABLE}.TransactionStatus ;;
  }

  dimension: ultimate_parent_pk {
    type: string
    sql: ${TABLE}.UltimateParentPk ;;
  }

  dimension: und_bloomberg_id {
    type: string
    sql: ${TABLE}.UndBloombergId ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}.UniqueId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: count_percent {
    type: percent_of_total
    sql: ${count};;
  }

  measure: sum_quantity {
    type: sum
    sql: ${quantity};;
    value_format: "#,##0.00"
  }
}
