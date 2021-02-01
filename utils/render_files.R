suppressWarnings(library(rmarkdown))

# Try to find the correct working dir
if(!file.exists("index.Rmd") && file.exists("../index.Rmd")) {
  setwd("../")
}

# Render HTML
render('index.Rmd', output_format = "html_document", output_dir = "docs/")
