source_qmd <- function(qmd) {
  temp_file_path <- tempfile(tmpdir = ".", fileext = ".R")
  source(
    knitr::purl(
      input = qmd,
      output = temp_file_path,
      documentation = 0
    )
  )
  file.remove(temp_file_path)
  rm(temp_file_path)
}
