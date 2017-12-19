connection: "ctc"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: assigned_role {}

explore: assigned_user {}

explore: audit_group_record_link {}

explore: audit_groups {}

explore: audit_task_outcomes {}

explore: back_out_job {}

explore: comment_record_link {}

explore: comments {}

explore: control_counters {}

explore: document_info {}

explore: document_properties {}

explore: documents {}

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

explore: file_upload_audit {}

explore: files {}

explore: group_history {}

explore: group_record_link {}

explore: groups {}

explore: ignored_contact {}

explore: links {}

explore: load_jobs {}

explore: maintenance_job_history {}

explore: match_jobs {}

explore: matches {}

explore: persisted_states {}

explore: purge_job {}

explore: record_history {
  join: files {
    type: left_outer
    sql_on: ${record_history.file_id} = ${files.id} ;;
    relationship: many_to_one
  }
}

explore: records {}

explore: user_audit {}
