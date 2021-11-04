- dashboard: supply_chain_pulse_poc
  title: Supply Chain Pulse PoC
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: 'C-301: Procurement Lead Times (Global-All Markets)'
    name: 'C-301: Procurement Lead Times (Global-All Markets)'
    model: omni_channel
    explore: omni_channel_transactions
    type: looker_line
    fields: [omni_channel_transactions.transaction_month, omni_channel_transactions.transaction_count,
      omni_channel_transactions.fulfillment_channel]
    pivots: [omni_channel_transactions.fulfillment_channel]
    filters:
      omni_channel_transactions.transaction_date: 12 months ago for 12 months
    sorts: [omni_channel_transactions.transaction_month desc, omni_channel_transactions.fulfillment_channel]
    limit: 500
    column_limit: 50
    row_total: right
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: Assisted Checkout -
              omni_channel_transactions.transaction_count, id: Assisted Checkout -
              omni_channel_transactions.transaction_count, name: Assisted Checkout},
          {axisId: Delivery - omni_channel_transactions.transaction_count, id: Delivery
              - omni_channel_transactions.transaction_count, name: Delivery}, {axisId: In-store
              Pickup - omni_channel_transactions.transaction_count, id: In-store Pickup
              - omni_channel_transactions.transaction_count, name: In-store Pickup},
          {axisId: Self Checkout - omni_channel_transactions.transaction_count, id: Self
              Checkout - omni_channel_transactions.transaction_count, name: Self Checkout}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hide_legend: true
    series_types: {}
    series_point_styles:
      In-store Pickup - omni_channel_transactions.transaction_count: auto
      Assisted Checkout - omni_channel_transactions.transaction_count: auto
      Delivery - omni_channel_transactions.transaction_count: auto
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 17
    col: 0
    width: 22
    height: 6
  - title: 'C-301: Total Consumption (Global- All Markets)'
    name: 'C-301: Total Consumption (Global- All Markets)'
    model: omni_channel
    explore: omni_channel_support_calls
    type: looker_area
    fields: [omni_channel_support_calls.resolved_on_call, omni_channel_support_calls.conversation_start_month,
      omni_channel_support_calls.count]
    pivots: [omni_channel_support_calls.resolved_on_call]
    fill_fields: [omni_channel_support_calls.conversation_start_month]
    filters:
      omni_channel_support_calls.conversation_start_date: before 2021/09/01
    sorts: [omni_channel_support_calls.conversation_start_month, omni_channel_support_calls.resolved_on_call]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: No - omni_channel_support_calls.count,
            id: No - omni_channel_support_calls.count, name: 'No'}, {axisId: Yes -
              omni_channel_support_calls.count, id: Yes - omni_channel_support_calls.count,
            name: 'Yes'}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Support Calls by Resolution  Yes/No
    hidden_series: []
    hide_legend: true
    series_types: {}
    swap_axes: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      omni_channel_support_calls.count:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    note_state: collapsed
    note_display: hover
    note_text: "Light Blue: Other Sectors. \n        Dark Blue: Sector A"
    listen: {}
    row: 4
    col: 0
    width: 22
    height: 7
  - name: <i class="fa fa-rss-square fa-2x" aria-hidden="true">Supply Chain Pulse</i>
    type: text
    title_text: <i class="fa fa-rss-square fa-2x" aria-hidden="true">Supply Chain
      Pulse</i>
    subtitle_text: Alert Drill Down Interface
    body_text: ''
    row: 0
    col: 0
    width: 22
    height: 2
  - name: <i class="fa fa-building fa" aria-hidden="true"> Inventory Positioning</i>
    type: text
    title_text: <i class="fa fa-building fa" aria-hidden="true"> Inventory Positioning</i>
    subtitle_text: ''
    body_text: ''
    row: 11
    col: 0
    width: 4
    height: 2
  - name: <i class="fa fa-shopping-cart fa" aria-hidden="true"> Demand Shaping</i>
    type: text
    title_text: <i class="fa fa-shopping-cart fa" aria-hidden="true"> Demand Shaping</i>
    subtitle_text: ''
    body_text: ''
    row: 2
    col: 0
    width: 4
    height: 2
  - title: 'C-301: Inventory Coverage Ratio by Inventory Location (North America)'
    name: 'C-301: Inventory Coverage Ratio by Inventory Location (North America)'
    model: thelook
    explore: inventory_snapshot
    type: looker_line
    fields: [inventory_snapshot.stock_coverage_ratio, distribution_centers.name, inventory_snapshot.snapshot_date]
    pivots: [distribution_centers.name]
    fill_fields: [inventory_snapshot.snapshot_date]
    filters:
      inventory_snapshot.snapshot_date: 2021/07/02 to 2021/07/16
    sorts: [distribution_centers.name, inventory_snapshot.snapshot_date desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 23
    col: 0
    width: 22
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 31
    col: 15
    width: 8
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 33
    col: 13
    width: 7
    height: 2
  - title: 'C301: Simulated Inventory Position after Increase '
    name: 'C301: Simulated Inventory Position after Increase '
    model: thelook
    explore: order_items
    type: looker_geo_coordinates
    fields: [distribution_centers.location, inventory_items.total_cost]
    sorts: [inventory_items.total_cost desc]
    column_limit: 50
    map: usa
    map_projection: ''
    show_view_names: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    font_size: 12
    quantize_colors: false
    listen: {}
    row: 40
    col: 0
    width: 8
    height: 13
  - title: 'C301: Recommended Inventory Transfers (6)'
    name: 'C301: Recommended Inventory Transfers (6)'
    model: thelook
    explore: order_items
    type: looker_map
    fields: [distribution_centers.location, inventory_items.total_cost]
    sorts: [inventory_items.total_cost desc]
    limit: 500
    column_limit: 50
    map_plot_mode: lines
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: satellite
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: log
    map_marker_color_mode: value
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 36.06686213257888
    map_longitude: -91.52728199958803
    map_zoom: 4
    map: usa
    map_projection: ''
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    font_size: 12
    quantize_colors: false
    listen: {}
    row: 40
    col: 8
    width: 16
    height: 13
  - name: '<i class="fa fa-building fa" aria-hidden="true"> Recommended Optimization:
      Inventory Increase with Node Level Balancing</i>'
    type: text
    title_text: '<i class="fa fa-building fa" aria-hidden="true"> Recommended Optimization:
      Inventory Increase with Node Level Balancing</i>'
    subtitle_text: ''
    body_text: ''
    row: 36
    col: 0
    width: 10
    height: 4
  - title: 'C-301: 30 day Inventory Change (Top Suppliers)'
    name: 'C-301: 30 day Inventory Change (Top Suppliers)'
    model: retail_block_model
    explore: stock_forecasting_explore_base
    type: looker_grid
    fields: [stock_forecasting_explore_base.product_name, stock_forecasting_explore_base.total_quantity,
      stock_forecasting_prediction.forecasted_quantity, stock_forecasting_explore_base.stock_difference,
      stock_forecasting_explore_base.stock_difference_value]
    filters:
      stock_forecasting_explore_base.stock_difference: "<-121"
      stock_forecasting_explore_base.stock_difference_value: ">0,<-200"
      stock_forecasting_explore_base.transaction_week_filter: 7 days
      stock_forecasting_explore_base.store_name: Los Angeles
    sorts: [stock_forecasting_explore_base.stock_difference_value desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      stock_forecasting_explore_base.total_quantity:
        is_active: false
      stock_forecasting_explore_base.stock_difference_value:
        is_active: true
        palette:
          palette_id: 0ab20095-1901-c8ba-05e9-122c506bc899
          collection_id: f14810d2-98d7-42df-82d0-bc185a074e42
          custom_colors:
          - "#a8282e"
          - "#ffffff"
          - "#5930c2"
    series_types: {}
    defaults_version: 1
    hidden_fields: [stock_forecasting_explore_base.product_name]
    listen: {}
    row: 13
    col: 0
    width: 22
    height: 4
  - name: <i class="fa fa-arrow-right fa" aria-hidden="true"> Simulation/Optimization
      AI</i>
    type: text
    title_text: <i class="fa fa-arrow-right fa" aria-hidden="true"> Simulation/Optimization
      AI</i>
    subtitle_text: ''
    body_text: |+
      <i class="fa fa-shopping-cart" aria-hidden="true"></i> <a
      href="https://docs.google.com/spreadsheets/d/1mhKwRHBfroInKeao7yXUFmWHQi0-3cDJi84B0Qjn508/edit#gid=0">Calibrate Demand Forecast</a>

      <i class="fa fa-building fa" aria-hidden="true"></i> <a href="https://sclpoc2.cloud.looker.com/dashboards-next/9">Optimize Inventory Levels</a>

      <i class="fa fa-building fa" aria-hidden="true"></i> <a href="https://sclpoc2.cloud.looker.com/dashboards-next/9">Optimize Inventory  Nodes</a>

    row: 31
    col: 0
    width: 6
    height: 5
  filters:
  - name: 'Filter by Component #:'
    title: 'Filter by Component #:'
    type: field_filter
    default_value: '301'
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - '201'
      - '244'
      - '266'
      - '301'
    model: thelook
    explore: inventory_items
    listens_to_filters: []
    field: inventory_items.id
