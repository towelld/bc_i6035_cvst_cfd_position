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
      height: 4
      width: 12
      fields: [records.count, records.system, records.age]
      pivots: [records.age]
      fill_fields: [records.age]
      filters:
        records.system: Calypso
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
