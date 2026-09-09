write_ojs <- function(f, columns) {
  str_glue('```{{ojs}}
            md`${{get_question("{columns}")}}`
            viewof input_{columns} = make_input_{f}(employee, "{columns}")
            html`<br>`
            make_table(make_objects_{f}, filtered_employee, "{columns}")
            ```')
}
