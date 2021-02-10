suppressWarnings(library(rmarkdown))

# Try to find the correct working dir
if(!file.exists("index.Rmd") && file.exists("../index.Rmd")) {
  setwd("../")
}

# Render as README
rmarkdown::render('index.Rmd', output_format = rmarkdown::md_document(variant = "markdown_github"), output_file = "README")

# Render HTML
rmarkdown::render('index.Rmd', output_format = "html_document", output_dir = "docs/", output_file = "index")

# Render Word
rmarkdown::render('index.Rmd', output_format = "word_document", output_dir = "word_and_pdf/", output_file = "SupplementaryMaterials")

# Render PDF
rmarkdown::render('index.Rmd', output_format = "pdf_document", output_dir = "word_and_pdf/", output_file = "SupplementaryMaterials")
