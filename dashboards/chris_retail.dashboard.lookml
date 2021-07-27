- dashboard: chris_retail
  title: Test Dash
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: New Tile
    name: New Tile
    model: scl_test1
    explore: lr_l2_c501617158644160_trailing_sales_snapshot
    type: looker_grid
    fields: [lr_l2_c501617158644160_trailing_sales_snapshot.product_id, lr_l2_c501617158644160_trailing_sales_snapshot.trailing_28d_sales]
    sorts: [lr_l2_c501617158644160_trailing_sales_snapshot.product_id]
    limit: 500
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    row:
    col:
    width:
    height:
  - title: New Tile
    name: New Tile (2)
    model: thelook
    explore: order_items
    type: looker_map
    fields: [users.approx_location, order_items.order_count, users.count, users.country,
      order_facts.order_cost, order_items.total_sale_price]
    filters:
      users.state: ''
      users.city: ''
      users.traffic_source: ''
      users.gender: ''
      order_items.created_date: 90 days
      distribution_centers.location: ''
      users.country: USA
    sorts: [order_items.order_count desc]
    limit: 500
    column_limit: 50
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 37.57941251343841
    map_longitude: -99.31640625000001
    map_zoom: 4
    map_marker_radius_max: 15
    map_marker_color: ["#4285F4", "#EA4335", "#FBBC04", "#34A853"]
    map_value_colors: [white, purple]
    map_value_scale_clamp_min: 0
    map_value_scale_clamp_max: 200
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    loading: false
    hidden_fields: [orders.count, users.count, order_items.order_count]
    map: usa
    map_projection: ''
    quantize_colors: false
    colors: [whitesmoke, "#64518A"]
    outer_border_color: "#64518A"
    inner_border_color: ''
    inner_border_width: 0.6
    outer_border_width: 2
    empty_color: ''
    y_axes: []
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Bubble size corresponds to average user spend
    series_types: {}
    row:
    col:
    width:
    height:
  - title: New Tile
    name: New Tile (3)
    model: omni_channel
    explore: omni_channel_transactions
    type: looker_area
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: Assisted Checkout -
              omni_channel_transactions.transaction_count, id: Assisted Checkout -
              omni_channel_transactions.transaction_count, name: Assisted Checkout},
          {axisId: Delivery - omni_channel_transactions.transaction_count, id: Delivery
              - omni_channel_transactions.transaction_count, name: Delivery}, {axisId: In-store
              Pickup - omni_channel_transactions.transaction_count, id: In-store Pickup
              - omni_channel_transactions.transaction_count, name: In-store Pickup},
          {axisId: Self Checkout - omni_channel_transactions.transaction_count, id: Self
              Checkout - omni_channel_transactions.transaction_count, name: Self Checkout}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_point_styles:
      In-store Pickup - omni_channel_transactions.transaction_count: auto
      Assisted Checkout - omni_channel_transactions.transaction_count: auto
      Delivery - omni_channel_transactions.transaction_count: auto
    defaults_version: 1
    row:
    col:
    width:
    height:
  - title: New Tile
    name: New Tile (4)
    model: thelook
    explore: order_items
    type: looker_bar
    fields: [inventory_items.days_in_inventory_tier, inventory_items.total_cost]
    sorts: [inventory_items.days_in_inventory_tier]
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    series_types: {}
    series_colors:
      inventory_items.number_on_hand: "#F9AB00"
      inventory_items.total_cost: "#F9AB00"
    defaults_version: 1
    row:
    col:
    width:
    height:
  - title: New Tile
    name: New Tile (5)
    model: omni_channel
    explore: omni_channel_transactions
    type: looker_line
    fields: [c360.months_since_first_purchase, c360.customer_count, omni_channel_transactions__transaction_details.total_sales,
      c360.customer_type]
    pivots: [c360.customer_type]
    fill_fields: [c360.customer_type]
    filters:
      c360.months_since_first_purchase: ">0"
    sorts: [c360.customer_type 0, c360.months_since_first_purchase]
    limit: 500
    dynamic_fields: [{table_calculation: average_per_customer_sales, label: Average
          Per Customer Sales, expression: 'running_total(${omni_channel_transactions__transaction_details.total_sales}/index(${c360.customer_count},1))',
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Average Lifetime Sales, orientation: left, series: [{axisId: average_per_customer_sales,
            id: Online Only - 0 - average_per_customer_sales, name: Online Only},
          {axisId: average_per_customer_sales, id: Instore Only - 1 - average_per_customer_sales,
            name: Instore Only}, {axisId: average_per_customer_sales, id: Both Online
              and Instore - 2 - average_per_customer_sales, name: Both Online and
              Instore}], showLabels: true, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [c360.customer_count, omni_channel_transactions__transaction_details.total_sales]
    row:
    col:
    width:
    height:
  - title: New Tile
    name: New Tile (6)
    model: thelook
    explore: journey_mapping
    type: looker_column
    fields: [order_items.created_date, order_items.status, order_items.order_count]
    pivots: [order_items.status]
    filters:
      distribution_centers.name: Chicago IL
      order_items.created_date: 60 days
      order_items.status: Complete,Shipped,Processing
    sorts: [order_items.created_date desc, order_items.status]
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    stacking: normal
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
    series_types: {}
    series_colors:
      Complete - order_items.order_count: "#80868B"
      Shipped - order_items.order_count: "#1A73E8"
      Processing - order_items.order_count: "#EA4335"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    row:
    col:
    width:
    height:
  - title: New Tile
    name: New Tile (7)
    model: thelook
    explore: order_items
    type: looker_grid
    fields: [distribution_centers.name, order_items.id, order_items.days_to_process,
      products.category, products.item_name]
    filters:
      inventory_items.created_date: before 3 days ago
      order_items.status: Processing
    sorts: [order_items.days_to_process desc]
    limit: 10
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row:
    col:
    width:
    height:
  - title: New Tile
    name: New Tile (8)
    model: omni_channel
    explore: omni_channel_support_calls
    type: looker_area
    fields: [omni_channel_support_calls.resolved_on_call, omni_channel_support_calls.conversation_start_month,
      omni_channel_support_calls.count]
    sorts: [omni_channel_support_calls.conversation_start_month]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    row:
    col:
    width:
    height:
