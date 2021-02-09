suppressWarnings(library(rmarkdown))

# Try to find the correct working dir
if(!file.exists("index.Rmd") && file.exists("../index.Rmd")) {
  setwd("../")
}

# Render as README
render('index.Rmd', output_format = md_document(variant = "markdown_github"), output_file = "README")

# Render HTML
render('index.Rmd', output_format = "html_document", output_dir = "docs/")

# Render Word
render('index.Rmd', output_format = "word_document", output_dir = "word_and_pdf/", output_file = "SupplementaryMaterials")

# Render PDF
# render('index.Rmd', output_format = "pdf", output_dir = "word_and_pdf/", output_file = "SupplementaryMaterials")
