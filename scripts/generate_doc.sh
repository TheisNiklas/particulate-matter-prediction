pydoc-markdown -I src/weatherdata -m weather_data '{
    renderer: {
      type: markdown,
      descriptive_class_title: false,
      render_toc: true,
      toc_maxdepth: 1,
      use_fixed_header_levels: true,
      header_level_by_type: {
        Module: 1,
        Class: 2,
        Method: 3,
        Function: 3,
        Data: 3
      }
    }
  }' > docs/weatherdata.md