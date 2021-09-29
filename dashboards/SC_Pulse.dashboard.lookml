- dashboard: supply_chain_pulse
  title: Supply Chain Pulse
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Frequent Shipping Destinations
    name: Frequent Shipping Destinations
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
      order_items.created_date: 500 days
      distribution_centers.location: ''
      users.country: USA
    sorts: [order_items.order_count desc]
    limit: 500
    column_limit: 50
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.1
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: satellite
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: person
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    map_latitude: 37.57941251343841
    map_longitude: -99.31640625000001
    map_zoom: 4
    map_marker_radius_max: 25
    map_marker_color: ["#4285F4", "#EA4335", "#FBBC04", "#34A853"]
    map_value_colors: [white, blude]
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
    listen: {}
    row: 12
    col: 12
    width: 9
    height: 6
  - title: Fulfillment Channel Mix- Trends
    name: Fulfillment Channel Mix- Trends
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
    listen: {}
    row: 18
    col: 0
    width: 21
    height: 6
  - title: Multi-channel Customer Trends
    name: Multi-channel Customer Trends
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
    listen: {}
    row: 68
    col: 12
    width: 9
    height: 9
  - title: Order Turn Around Health
    name: Order Turn Around Health
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
    listen: {}
    row: 4
    col: 0
    width: 17
    height: 8
  - title: Top Priority Orders
    name: Top Priority Orders
    model: thelook
    explore: order_items
    type: looker_grid
    fields: [distribution_centers.name, order_items.id, order_items.days_to_process,
      products.category, products.item_name, users.approx_location]
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
    listen: {}
    row: 12
    col: 0
    width: 12
    height: 6
  - title: CO2 Usage by Electric Vehicle Yes/No
    name: CO2 Usage by Electric Vehicle Yes/No
    model: omni_channel
    explore: omni_channel_support_calls
    type: looker_area
    fields: [omni_channel_support_calls.resolved_on_call, omni_channel_support_calls.conversation_start_month,
      omni_channel_support_calls.count]
    pivots: [omni_channel_support_calls.resolved_on_call]
    fill_fields: [omni_channel_support_calls.conversation_start_month]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: No - omni_channel_support_calls.count,
            id: No - omni_channel_support_calls.count, name: 'No'}, {axisId: Yes -
              omni_channel_support_calls.count, id: Yes - omni_channel_support_calls.count,
            name: 'Yes'}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Support Calls by Resolution  Yes/No
    hidden_series: []
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
    listen: {}
    row: 84
    col: 0
    width: 14
    height: 7
  - title: 'Sales Health: Product Category Trends'
    name: 'Sales Health: Product Category Trends'
    model: thelook
    explore: order_items
    type: looker_area
    fields: [products.category, order_items.created_date, order_items.count]
    pivots: [products.category]
    fill_fields: [order_items.created_date]
    filters:
      products.category: Blazers & Jackets,Sweaters,Pants,Shorts,Accessories,Fashion
        Hoodies & Sweatshirts
      order_items.created_date: 90 days
    sorts: [products.category, order_items.created_date desc]
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 51
    col: 0
    width: 21
    height: 8
  - title: Impact of Weather vs Comp Store
    name: Impact of Weather vs Comp Store
    model: retail_block_model
    explore: transactions
    type: looker_bar
    fields: [transactions__line_items.sales_change, transactions.number_of_transactions_change,
      stores.store_comparison_vs_stores_in_tier_with_weather]
    filters:
      transactions.transaction_date: 2 years
      transactions.comparison_type: year
      transactions.date_comparison_filter: 7 days
      stores.store_for_comparison: Los Angeles
    sorts: [transactions__line_items.sales_change desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: store, label: Store, expression: 'concat(${stores.store_comparison_vs_stores_in_tier},"
          ",${weather})', value_format: !!null '', value_format_name: !!null '', is_disabled: true,
        _kind_hint: dimension, _type_hint: string}, {table_calculation: focus_store_sales_change,
        label: Focus Store Sales Change (%), expression: 'if(contains(${stores.store_comparison_vs_stores_in_tier_with_weather},"1-
          "),${transactions__line_items.sales_change},null)', value_format: !!null '',
        value_format_name: percent_1, _kind_hint: measure, _type_hint: number}, {
        table_calculation: other_stores_sales_change, label: Other Stores Sales Change
          (%), expression: 'if(contains(${stores.store_comparison_vs_stores_in_tier_with_weather},"1-
          "),null,${transactions__line_items.sales_change})', value_format: !!null '',
        value_format_name: percent_1, _kind_hint: measure, _type_hint: number}, {
        table_calculation: weather, label: Weather, expression: 'if(${store_weather.average_daily_precipitation}<2.0,"☀️",if(${store_weather.average_daily_precipitation}<4.0,"☁️","?"))',
        value_format: !!null '', value_format_name: !!null '', is_disabled: true,
        _kind_hint: dimension, _type_hint: string}]
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
    point_style: circle
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
      collection_id: f14810d2-98d7-42df-82d0-bc185a074e42
      palette_id: 89f8fd99-5003-4efd-ae1a-ae0aa28825ca
      options:
        steps: 5
    series_types: {}
    series_colors:
      focus_store_sales_change: "#5A30C2"
      other_stores_sales_change: "#9d81e6"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_cell_visualizations:
      focus_store_sales_change:
        is_active: false
      other_stores_sales_change:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    map_marker_units: pixels
    map_marker_radius_min: 3
    map_marker_radius_max: 20
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    map_value_colors: ["#aaa", "#5930c2"]
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    color_range: ["#5A30C2", "#9d81e6", "#2D2442", "#42248F", "#1F1142"]
    color_by: root
    show_null_points: true
    hidden_fields: [transactions__line_items.sales_change, transactions.number_of_transactions_change]
    note_state: collapsed
    note_display: hover
    note_text: This shows your year over year sales
    defaults_version: 1
    listen: {}
    row: 59
    col: 13
    width: 8
    height: 9
  - title: Extreme Heat impact on Sales (Store sales and Public Weather Data)
    name: Extreme Heat impact on Sales (Store sales and Public Weather Data)
    model: retail_block_model
    explore: transactions
    type: looker_line
    fields: [store_weather.average_max_temparature, transactions.transaction_date,
      transactions__line_items.total_sales_per_store]
    fill_fields: [transactions.transaction_date]
    filters:
      transactions.transaction_date: 14 days
      stores.store_comparison_vs_tier: 2-%
      stores.store_for_comparison: Los Angeles
    sorts: [transactions.transaction_date desc]
    limit: 500
    column_limit: 1
    dynamic_fields: [{table_calculation: focus_store_transaction_count_change, label: Focus
          Store Transaction Count Change (%), expression: 'if(contains(${stores.store_comparison_vs_stores_in_tier_with_weather},"1-
          "),${transactions.number_of_transactions_change},null)', value_format: !!null '',
        value_format_name: percent_1, _kind_hint: measure, _type_hint: number, is_disabled: true},
      {table_calculation: other_stores_transaction_count_change, label: Other Stores
          Transaction Count Change (%), expression: 'if(contains(${stores.store_comparison_vs_stores_in_tier_with_weather},"1-
          "),null,${transactions.number_of_transactions_change})', value_format: !!null '',
        value_format_name: percent_1, _kind_hint: measure, _type_hint: number, is_disabled: true}]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: store_weather.average_max_temparature,
            id: store_weather.average_max_temparature, name: Average Max Temparature}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}, {label: '', orientation: right, series: [{axisId: transactions__line_items.total_sales_per_store,
            id: transactions__line_items.total_sales_per_store, name: Total Sales
              per Store}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    hidden_series: []
    series_types: {}
    series_colors:
      1- Los Angeles - transactions__line_items.total_sales_per_store: "#1F1142"
      2- Rest of Stores in Tier - store_weather.average_max_temparature: "#5A30C2"
      2- Rest of Stores in Tier - transactions__line_items.total_sales_per_store: "#1F1142"
      store_weather.average_max_temparature: "#9d81e6"
      transactions__line_items.total_sales_per_store: "#1F1142"
    reference_lines: [{reference_type: range, margin_top: deviation, margin_value: mean,
        margin_bottom: deviation, label_position: right, color: "#588eff", line_value: '10',
        range_start: "-10", range_end: '10', label: Cold}, {reference_type: range,
        line_value: mean, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#f0c157", range_start: '10', range_end: '20',
        label: Warm}, {reference_type: range, line_value: mean, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#ed5432",
        range_start: '20', range_end: '60', label: Hot}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_cell_visualizations:
      focus_store_sales_change:
        is_active: false
      other_stores_sales_change:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    map_marker_units: pixels
    map_marker_radius_min: 3
    map_marker_radius_max: 20
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    map_value_colors: ["#aaa", "#5930c2"]
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    color_range: ["#5A30C2", "#9d81e6", "#2D2442", "#42248F", "#1F1142"]
    color_by: root
    hidden_fields: []
    defaults_version: 1
    listen: {}
    row: 59
    col: 0
    width: 13
    height: 9
  - name: <i class="fa fa-rss-square fa-3x" aria-hidden="true">Supply Chain Pulse</i>
    type: text
    title_text: <i class="fa fa-rss-square fa-3x" aria-hidden="true">Supply Chain
      Pulse</i>
    subtitle_text: KPI/Alert Interface
    body_text: ''
    row: 0
    col: 1
    width: 20
    height: 2
  - name: <i class="fa fa-truck fa-2x" aria-hidden="true"> Perfect Fulfillment</i>
    type: text
    title_text: <i class="fa fa-truck fa-2x" aria-hidden="true"> Perfect Fulfillment</i>
    subtitle_text: ''
    body_text: ''
    row: 2
    col: 0
    width: 7
    height: 2
  - name: <i class="fa fa-building fa-2x" aria-hidden="true"> Inventory Positioning</i>
    type: text
    title_text: <i class="fa fa-building fa-2x" aria-hidden="true"> Inventory Positioning</i>
    subtitle_text: ''
    body_text: ''
    row: 24
    col: 0
    width: 7
    height: 2
  - name: <i class="fa fa-shopping-cart fa-2x" aria-hidden="true"> Demand Shaping</i>
    type: text
    title_text: <i class="fa fa-shopping-cart fa-2x" aria-hidden="true"> Demand Shaping</i>
    subtitle_text: ''
    body_text: ''
    row: 41
    col: 0
    width: 6
    height: 2
  - name: <i class="fa fa-globe fa-2x" aria-hidden="true"> Sustainability</i>
    type: text
    title_text: <i class="fa fa-globe fa-2x" aria-hidden="true"> Sustainability</i>
    subtitle_text: ''
    body_text: ''
    row: 82
    col: 0
    width: 5
    height: 2
  - title: Sales Health- Year over Year Trends
    name: Sales Health- Year over Year Trends
    model: omni_channel
    explore: omni_channel_transactions
    type: looker_line
    fields: [omni_channel_transactions__transaction_details.total_sales, omni_channel_transactions.transaction_month_name,
      omni_channel_transactions.transaction_year]
    pivots: [omni_channel_transactions.transaction_year]
    fill_fields: [omni_channel_transactions.transaction_year, omni_channel_transactions.transaction_month_name]
    sorts: [omni_channel_transactions__transaction_details.total_sales desc 0, omni_channel_transactions.transaction_year]
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: omni_channel_transactions__transaction_details.total_sales,
            id: 2016 - omni_channel_transactions__transaction_details.total_sales,
            name: '2016'}, {axisId: omni_channel_transactions__transaction_details.total_sales,
            id: 2017 - omni_channel_transactions__transaction_details.total_sales,
            name: '2017'}, {axisId: omni_channel_transactions__transaction_details.total_sales,
            id: 2018 - omni_channel_transactions__transaction_details.total_sales,
            name: '2018'}, {axisId: omni_channel_transactions__transaction_details.total_sales,
            id: 2019 - omni_channel_transactions__transaction_details.total_sales,
            name: '2019'}, {axisId: omni_channel_transactions__transaction_details.total_sales,
            id: 2020 - omni_channel_transactions__transaction_details.total_sales,
            name: '2020'}, {axisId: omni_channel_transactions__transaction_details.total_sales,
            id: 2021 - omni_channel_transactions__transaction_details.total_sales,
            name: '2021'}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_types: {}
    discontinuous_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 43
    col: 0
    width: 16
    height: 8
  - title: 'Customer Geo Profile: High Value Customers '
    name: 'Customer Geo Profile: High Value Customers '
    model: thelook
    explore: order_items
    type: looker_map
    fields: [users.approx_location, order_items.order_count, users.count, users.country,
      order_facts.order_cost, order_items.total_sale_price]
    filters:
      order_items.created_date: 28 days
      order_facts.order_cost: ">130"
    sorts: [order_items.order_count desc]
    limit: 500
    column_limit: 50
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.1
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: satellite
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: icon
    map_marker_icon_name: person
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    map_latitude: 37.57941251343841
    map_longitude: -99.31640625000001
    map_zoom: 4
    map_marker_radius_max: 25
    map_marker_color: ["#4285F4", "#EA4335", "#FBBC04", "#34A853"]
    map_value_colors: [white, blude]
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
    listen: {}
    row: 68
    col: 0
    width: 12
    height: 9
  - title: Inventory Sales Coverage Ratio by Fulfillment Center
    name: Inventory Sales Coverage Ratio by Fulfillment Center
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
    row: 33
    col: 0
    width: 19
    height: 8
  - title: 'Inventory Health: Aging Drill Down'
    name: 'Inventory Health: Aging Drill Down'
    model: thelook
    explore: order_items
    type: looker_scatter
    fields: [inventory_items.days_in_inventory_tier, inventory_items.number_on_hand]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: inventory_items.number_on_hand,
            id: inventory_items.number_on_hand, name: Number on Hand}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    size_by_field: inventory_items.number_on_hand
    font_size: '12'
    series_types: {}
    reference_lines: []
    swap_axes: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
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
      inventory_items.total_cost:
        is_active: true
    leftAxisLabelVisible: true
    leftAxisLabel: Aging Bucket
    rightAxisLabelVisible: true
    rightAxisLabel: Number of Items
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: hidden
    valuePosition: inline
    labelColorEnabled: false
    labelColor: "#FFF"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 26
    col: 0
    width: 16
    height: 7
  - title: Customer Segmentation
    name: Customer Segmentation
    model: retail_block_model
    explore: customer_clustering_prediction
    type: looker_grid
    fields: [customer_clustering_prediction.customer_segment, customer_clustering_prediction.customer_count]
    sorts: [customer_clustering_prediction.customer_count desc, customer_clustering_prediction.customer_segment]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application: undefined
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
    legend_position: center
    series_types: {}
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    interpolation: linear
    truncate_column_names: false
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    font_size: 12
    listen: {}
    row: 77
    col: 0
    width: 12
    height: 5
  - title: Product Affinity- High Add-On Products
    name: Product Affinity- High Add-On Products
    model: retail_block_model
    explore: order_purchase_affinity
    type: looker_column
    fields: [order_purchase_affinity.add_on_frequency, order_purchase_affinity.product_a_category]
    filters:
      order_purchase_affinity.affinity_timeframe: 90 days
      order_items_base.product_level: product
      order_purchase_affinity.add_on_frequency: "[.08, .13]"
    sorts: [order_purchase_affinity.add_on_frequency]
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
    listen: {}
    row: 77
    col: 12
    width: 9
    height: 5
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<i class=\"fa fa-truck fa-2x\" aria-hidden=\"true\"> Fulfillment Alerts</i>\
      \ \n<hr>\n<i class=\"fa fa-truck fa-2x\" aria-hidden=\"true\"> Late Ship Alert</i>\
      \ <a href=\"https://docs.google.com/spreadsheets/d/1mhKwRHBfroInKeao7yXUFmWHQi0-3cDJi84B0Qjn508/edit#gid=0\"\
      >(Action)</a>\n<i class=\"fa fa-truck fa-2x\" aria-hidden=\"true\"> Late Ship\
      \ Alert</i> <a href=\"https://docs.google.com/spreadsheets/d/1mhKwRHBfroInKeao7yXUFmWHQi0-3cDJi84B0Qjn508/edit#gid=0\"\
      >(Action)</a>\n<i class=\"fa fa-truck fa-2x\" aria-hidden=\"true\"> High Returns\
      \ Alert</i> <a href=\"https://docs.google.com/spreadsheets/d/1mhKwRHBfroInKeao7yXUFmWHQi0-3cDJi84B0Qjn508/edit#gid=0\"\
      >(Action)</a>\n\n"
    row: 4
    col: 17
    width: 6
    height: 4
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 2
    col: 15
    width: 8
    height: 2
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <i class="fa fa-shopping-cart fa-2x" aria-hidden="true"> Demand Alerts</i>
      <HR>
      <i class="fa fa-shopping-cart fa-2x" aria-hidden="true"> Underforecast Alert</i> <a href="https://docs.google.com/spreadsheets/d/1mhKwRHBfroInKeao7yXUFmWHQi0-3cDJi84B0Qjn508/edit#gid=0">(Action)</a>
      <i class="fa fa-shopping-cart fa-2x" aria-hidden="true"> Overforecast Alert</i> <a href="https://docs.google.com/spreadsheets/d/1mhKwRHBfroInKeao7yXUFmWHQi0-3cDJi84B0Qjn508/edit#gid=0">(Action)</a>
      <i class="fa fa-shopping-cart fa-2x" aria-hidden="true"> Overforecast Alert</i> <a href="https://docs.google.com/spreadsheets/d/1mhKwRHBfroInKeao7yXUFmWHQi0-3cDJi84B0Qjn508/edit#gid=0">(Action)</a>
    row: 43
    col: 16
    width: 6
    height: 4
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 24
    col: 13
    width: 7
    height: 2
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 41
    col: 16
    width: 8
    height: 2
  - name: " (6)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <i class="fa fa-building fa-2x" aria-hidden="true"> Inventory Alerts</i>
      <hr>
      <i class="fa fa-building fa-2x" aria-hidden="true"> Understock Alert</i> <a href="https://docs.google.com/spreadsheets/d/1mhKwRHBfroInKeao7yXUFmWHQi0-3cDJi84B0Qjn508/edit#gid=0">(Action)</a>
      <i class="fa fa-building fa-2x" aria-hidden="true"> Inventory Transfer Alert</i> <a href="https://docs.google.com/spreadsheets/d/1mhKwRHBfroInKeao7yXUFmWHQi0-3cDJi84B0Qjn508/edit#gid=0">(Action)</a>
    row: 26
    col: 16
    width: 7
    height: 3
  - name: " (7)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 82
    col: 11
    width: 7
    height: 2
  - name: " (8)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <i class="fa fa-globe fa-2x" aria-hidden="true"> Sustainability Alerts</i>
      <HR>
      <i class="fa fa-globe fa-2x" aria-hidden="true"> Spike in Transportations Costs</i>
      <a href="https://docs.google.com/spreadsheets/d/1mhKwRHBfroInKeao7yXUFmWHQi0-3cDJi84B0Qjn508/edit#gid=0">(Action)</a>
    row: 84
    col: 14
    width: 8
    height: 3
  - title: Simulated Inventory Balance After Transfers (US)
    name: Simulated Inventory Balance After Transfers (US)
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
    row: 94
    col: 16
    width: 8
    height: 13
  - title: Recommended Inventory Transfers (6)
    name: Recommended Inventory Transfers (6)
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
    row: 94
    col: 0
    width: 16
    height: 13
  - name: <i class="fa fa-building fa-2x" aria-hidden="true"> Inventory Positioning</i>
      (2)
    type: text
    title_text: <i class="fa fa-building fa-2x" aria-hidden="true"> Inventory Positioning</i>
    subtitle_text: 'Recommendation: Optimize Inventory Location'
    body_text: ''
    row: 91
    col: 0
    width: 24
    height: 3
  - title: New Tile
    name: New Tile
    model: omni_channel
    explore: omni_channel_support_calls
    type: looker_area
    fields: [omni_channel_support_calls.resolved_on_call, omni_channel_support_calls.conversation_start_month,
      omni_channel_support_calls.count]
    pivots: [omni_channel_support_calls.resolved_on_call]
    fill_fields: [omni_channel_support_calls.conversation_start_month]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: No - omni_channel_support_calls.count,
            id: No - omni_channel_support_calls.count, name: 'No'}, {axisId: Yes -
              omni_channel_support_calls.count, id: Yes - omni_channel_support_calls.count,
            name: 'Yes'}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Support Calls by Resolution  Yes/No
    hidden_series: []
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
