connection: "ctc"


# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: exception_history {}

explore: exception_record_link {}

explore: exception_record_link_history {}

explore: exceptions {}

explore: file_record_link {
  join: files {
    type: left_outer
    sql_on: ${file_record_link.file_id} = ${files.id} ;;
    relationship: many_to_one
  }
}

explore: file_row_errors {
  join: files {
    type: left_outer
    sql_on: ${file_row_errors.file_id} = ${files.id} ;;
    relationship: many_to_one
  }
}

explore: files {}

explore: group_history {}

explore: group_record_link {}

explore: groups {}

explore: load_jobs {}

explore: match_jobs {}

explore: record_history {
  join: files {
    type: left_outer
    sql_on: ${record_history.file_id} = ${files.id} ;;
    relationship: many_to_one
  }
}

explore: records {
  persist_for: "5 minutes"
}

explore: user_audit{
  persist_for: "5 minutes"
  join: user_session_audit {
    type: inner
    sql_on: ${user_session_audit.session_id} = ${user_audit.session_id} ;;
    relationship: one_to_one
  }
}
