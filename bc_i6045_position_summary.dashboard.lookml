- dashboard: i6045_position_summary
  title: Position Summary
  layout: static
  width: 1632
  tile_size: 68
  embed_style:
    background_color: "#ffffff"
    show_title: true
    title_color: "#646569"
    show_filters_bar: true
    tile_background_color: "#ffffff"
    tile_text_color: "#646569"

  filters:
  - name: facing_pb
    type: field_filter
    model: bc_i6035_cvst_cfd_position
    explore: records
    field: records.facing_pb

  elements:
    - name: break_count_by_age_chart
      title: Break Count by Account by Age
      model: bc_i6035_cvst_cfd_position
      explore: records
      type: looker_column
      left: 0
      top: 0
      height: 3
      width: 11
      fields: [records.count, records.system, records.age]
      pivots: [records.age]
      fill_fields: [records.age]
      filters:
        records.system: Calypso
        records.match_status: Unmatched
      listen:
        facing_pb: records.facing_pb
      sorts: [records.count desc 0, records.age]
      limit: 500
      stacking: ''
      show_value_labels: true
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
      show_x_axis_ticks: false
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      series_types: {}
      series_colors:
        Below 4 - 0 - records.count: "#92c26e"
        4 to 7 - 1 - records.count: "#eaa153"
        8 to 15 - 2 - records.count: "#df5555"
        16 or Above - 3 - records.count: "#ff0000"
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: Below
                4, name: Below 4, axisId: records.count}, {id: 4 to 7, name: 4 to 7, axisId: records.count},
            {id: 8 to 15, name: 8 to 15, axisId: records.count}, {id: 16 or Above, name: 16
                or Above, axisId: records.count}]}]


    - name: break_count_by_age_table
      title: Detail
      model: bc_i6035_cvst_cfd_position
      explore: records
      type: table
      left: 0
      top: 3
      height: 6
      width: 11
      fields: [records.facing_pb, records.age, records.count]
      pivots: [records.age]
      fill_fields: [records.age]
      filters:
        records.system: Calypso
        records.match_status: Unmatched
      listen:
        facing_pb: records.facing_pb
      sorts: [records.facing_pb, records.age]
      limit: 500
      total: true
      show_view_names: false
      show_row_numbers: false
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: gray
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      series_types: {}
      series_labels:
        records.facing_pb: Account/PB
        records.count: Count
        records.age: Age


    - name: break_value_by_age_chart
      title: Break Value (USD) by Account by Age
      model: bc_i6035_cvst_cfd_position
      explore: records
      type: looker_column
      left: 12
      top: 0
      height: 3
      width: 11
      fields: [records.system, records.age, records.sum_settle_amt_usd]
      pivots: [records.age]
      fill_fields: [records.age]
      filters:
        records.system: Calypso
        records.match_status: Unmatched
      listen:
        facing_pb: records.facing_pb
      sorts: [records.age, records.sum_settle_amt_usd desc 0]
      limit: 500
      column_limit: 50
      stacking: ''
      show_value_labels: true
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
      show_x_axis_ticks: false
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      series_types: {}
      series_colors:
        Below 4 - 0 - records.sum_settle_amt_usd: "#92c26e"
        4 to 7 - 1 - records.sum_settle_amt_usd: "#eaa153"
        8 to 15 - 2 - records.sum_settle_amt_usd: "#df5555"
        16 or Above - 3 - records.sum_settle_amt_usd: "#ff0000"
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: Below
                4, name: Below 4, axisId: records.sum_settle_amt_usd, __FILE: i6035_cvst_cfd_position/i6045_position_summary.dashboard.lookml,
              __LINE_NUM: 79}, {id: 4 to 7, name: 4 to 7, axisId: records.sum_settle_amt_usd, __FILE: i6035_cvst_cfd_position/i6045_position_summary.dashboard.lookml,
              __LINE_NUM: 80}, {id: 8 to 15, name: 8 to 15, axisId: records.sum_settle_amt_usd, __FILE: i6035_cvst_cfd_position/i6045_position_summary.dashboard.lookml,
              __LINE_NUM: 81}, {id: 16 or Above, name: 16 or Above, axisId: records.sum_settle_amt_usd,
              __FILE: i6035_cvst_cfd_position/i6045_position_summary.dashboard.lookml,
              __LINE_NUM: 81}], __FILE: i6035_cvst_cfd_position/i6045_position_summary.dashboard.lookml,
          __LINE_NUM: 77}]


    - name: break_value_by_age_table
      title: Detail
      model: bc_i6035_cvst_cfd_position
      explore: records
      type: table
      left: 12
      top: 3
      height: 6
      width: 11
      fields: [records.facing_pb, records.age, records.sum_settle_amt_usd]
      pivots: [records.age]
      fill_fields: [records.age]
      filters:
        records.system: Calypso
        records.match_status: Unmatched
      listen:
        facing_pb: records.facing_pb
      sorts: [records.facing_pb, records.age]
      limit: 500
      total: true
      show_view_names: false
      show_row_numbers: false
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: gray
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      series_types: {}
      series_labels:
        records.facing_pb: Account/PB
        records.sum_settle_amt_usd: Value (USD)
        records.age: Age

    - name: break_count_and_value_by_age_table
      title: Combined Detail
      model: bc_i6035_cvst_cfd_position
      explore: records
      type: table
      left: 0
      top: 8
      height: 6
      width: 23
      fields: [records.facing_pb, records.count, records.sum_settle_amt_usd, records.age]
      pivots: [records.age]
      fill_fields: [records.age]
      filters:
        records.system: Calypso
        records.match_status: Unmatched
      listen:
        facing_pb: records.facing_pb
      sorts: [records.facing_pb, records.age]
      limit: 500
      total: true
      show_view_names: false
      show_row_numbers: false
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: gray
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      series_types: {}
      series_labels:
        records.facing_pb: Account/PB
        records.count: Count
        records.sum_settle_amt_usd: Value (USD)
        records.age: Age


    - name: automatch_count_last_7_days
      title: Auto Matched Count - Last 7 Days
      model: bc_i6035_cvst_cfd_position
      explore: match_jobs
      type: looker_column
      left: 0
      top: 13
      height: 6
      width: 7
      fields: [match_jobs.date_time_stamp_date, match_jobs.sum_matched]
      fill_fields: [match_jobs.date_time_stamp_date]
      filters:
        match_jobs.date_time_stamp_date: 7 days
      sorts: [match_jobs.date_time_stamp_date desc]
      limit: 500
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_colors:
        match_jobs.sum_matched: "#073C68"
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: match_jobs.sum_matched,
              name: Match Jobs Sum Matched, axisId: match_jobs.sum_matched}]}]

    - name: manualmatch_count_last_7_days
      title: Manual Matched Count - Last 7 Days
      model: bc_i6035_cvst_cfd_position
      explore: user_audit
      type: looker_column
      left: 8
      top: 13
      height: 6
      width: 7
      fields: [user_session_audit.full_user_name, user_audit.date_time_stamp_date, user_audit.count]
      pivots: [user_session_audit.full_user_name]
      fill_fields: [user_audit.date_time_stamp_date]
      filters:
        user_audit.action: Accept,Match
        user_audit.date_time_stamp_date: 7 days
      sorts: [user_audit.date_time_stamp_date desc, user_audit.count desc 0, user_session_audit.full_user_name]
      limit: 500
      stacking: normal
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      series_types: {}
      hide_legend: false
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: "#,##0", series: [{id: Brett, name: Brett,
              axisId: user_audit.count}, {id: Dai, name: Dai, axisId: user_audit.count},
            {id: Spencer, name: Spencer, axisId: user_audit.count}, {id: Yogesh, name: Yogesh,
              axisId: user_audit.count}]}]

    - name: unmatch_count_last_7_days
      title: Unmatched Count - Last 7 Days
      model: bc_i6035_cvst_cfd_position
      explore: match_jobs
      type: looker_area
      left: 16
      top: 13
      height: 6
      width: 7
      fields: [match_jobs.date_time_stamp_date, match_jobs.average_unmatched]
      filters:
        match_jobs.date_time_stamp_date: 7 days
      sorts: [match_jobs.date_time_stamp_date]
      limit: 500
      stacking: ''
      show_value_labels: true
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      show_null_points: false
      point_style: circle_outline
      interpolation: linear
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      ordering: none
      show_null_labels: false
      column_spacing_ratio:
      column_group_spacing_ratio:
      hide_legend: false
      series_types: {}
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: match_jobs.average_unmatched,
              name: Average Unmatched, axisId: match_jobs.average_unmatched}]}]
      series_colors:
        match_jobs.average_unmatched: "#073C68"
      x_padding_left: 20