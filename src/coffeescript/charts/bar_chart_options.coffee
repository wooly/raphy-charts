class BarChartOptions
  @DEFAULTS: {
    bar_width: 20 
    bar_spacing: 20
    bar_color: "#00aadd"
    rounding: 0

    font_family: "Helvetica, Arial, sans-serif"

    show_x_labels: true
    show_y_labels: true


    x_label_size: 14
    x_label_color: "#333"

    y_label_size: 14
    y_label_color: "#333"

    show_grid: false

    x_padding: 25
    y_padding: 40
  }


  @merge: (from = {}, to = {}) ->
    opts = {}

    for option, value of from
      opts[option] = value

    for option, value of to when to.hasOwnProperty(option)
      opts[option] = value

    return opts


  constructor: (options) ->
    opts = {}

    for option, value of BarChartOptions.DEFAULTS
      opts[option] = value

    for option, value of options when options.hasOwnProperty(option)
      opts[option] = value

    return opts

