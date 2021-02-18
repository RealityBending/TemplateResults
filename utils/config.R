installed <- rownames(installed.packages())

# Install packages
for(pkg in c("knitr", "magrittr", "insight", "bayestestR", "parameters", "effectsize", "performance", "correlation", "modelbased", "see", "remotes", "ggplot2")){
  if (!pkg %in% installed){
    install.packages(pkg, repos = "http://cran.us.r-project.org")
  }
}
# Because report and easystats are not on CRAN
if (!"report" %in% installed) remotes::install_github("easystats/report")
# if (!"easystats" %in% installed) remotes::install_github("easystats/easystats")




# Load packages silently
for(pkg in c("tidyverse", "ggplot2", "easystats")){
  if (pkg %in% installed && !require(pkg, character.only=TRUE)) {
    suppressWarnings(suppressPackageStartupMessages(library(pkg, character.only=TRUE)))
  }
}

# Install Python
# py_install(packages = c('numpy', 'pandas', 'scipy', 'seaborn', 'matplotlib'))


# Options relative to figure size
figheight <- 6
figwidth <- 6 * see::golden_ratio()

# General options
options(knitr.kable.NA = "",
        digits = 2,
        tidyverse.quiet = TRUE)

# Chunk options (see https://yihui.org/knitr/options/#chunk_options)
knitr::opts_chunk$set(
  comment = ">",  # The prefix to be added before each line of the text output.
  dpi = 600,
  fig.path = "figures/",
  fig.height=figheight,
  fig.width=figwidth
  # fig.align = "center"
)


# Set seed for reproducible results
set.seed(333)
