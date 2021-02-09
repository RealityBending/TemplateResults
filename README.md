<!-- 
!!!! IMPORTANT: run `source("utils/render.R")` to publish instead of clicking on 'Knit'
-->

Introduction
============

![Website](https://github.com/RealityBending/TemplateResults/workflows/Website/badge.svg)

This is a template for a data analysis folder that can be easily
exported as a
[**webpage**](https://realitybending.github.io/TemplateResults/) or as
**Supplementary Materials** (e.g., as a [word
document](https://realitybending.github.io/TemplateResults/word/)). The
README page of the repository, alongside the webpage and word document,
were all created from the
[index.Rmd](https://github.com/RealityBending/TemplateResults/blob/main/index.Rmd)
file that you can edit.

Features
--------

-   [x] APA citations
-   [x] Rendered as a [README
    page](https://github.com/RealityBending/TemplateResults/blob/main/README.md),
    a [published
    website](https://realitybending.github.io/TemplateResults/) and a
    [word
    document](https://github.com/RealityBending/TemplateResults/raw/main/word/SupplementaryMaterials.docx)
-   [x] Tidy organisation (separate files for independent analyses)
-   [x] Great default configuration
-   [x] And more!

Installation
------------

-   **How to use this template?**

Download it ([**click here to
download**](https://github.com/RealityBending/TemplateResults/archive/main.zip)),
unzip it and edit.

-   **How to upload it to a website?**

Upload the whole folder to GitHub, go to settings and enable GitHub
pages, and select the `docs/` folder as the location of the webpage.
Indeed, rendering (knitting) the files will generate an “index.html”
file in the `/docs/` folder, which is used as the website. You can see
an example at <https://realitybending.github.io/TemplateResults/>.

-   **How to add references?**

References have to be added in `bib` format in the
[*utils/bibliography.bib*](https://github.com/RealityBending/TemplateResults/blob/main/utils/bibliography.bib)
file, and further referenced in the text like this (Lüdecke, Waggoner, &
Makowski, 2019).

Structure
---------

Most files that you’ll need to create / edit will be written in
[**rmarkdown**](https://rmarkdown.rstudio.com/lesson-1.html), which
consists of a mix of markdown text and R chunks of code.

The main file is named
[**index.Rmd**](https://github.com/RealityBending/TemplateResults/blob/main/index.Rmd).
However, to avoid having overly long files, the different (and
independent) analyses parts are actually split in other documents. For
instance, in this template example, the descriptive statistics section
is in the
[**1\_descriptive.Rmd**](https://github.com/RealityBending/TemplateResults/blob/main/1_descriptive.Rmd)
file. As you can [see in the index
file](https://github.com/RealityBending/TemplateResults/blob/690f7947da0fc8ac85eaf6fb87fafeaa46fb3c50/index.Rmd#L89-L90),
this file is then integrated as a child document (i.e., it is merged).
This makes it very convenient to have a clear structure with
well-organized files, that are put together only when merged.

Render and Publish
------------------

Importantly, in order to render all the files, do not Knit this document
by pressing the ‘Knit’ button. If you do, it will create an output file
(for instance `index.html`) in the root folder, alongside `index.Rmd`.
This is **not what we want**, as we want to keep the output files tidy
in separate folders (for instance, the html version should be in the
`/docs/` folder, as this is where the website will look for).

There an R script,
[utils/render.R](https://github.com/RealityBending/TemplateResults/blob/main/utils/render.R),
that contains the lines to render everything in its correct location.
So, when you have the “index.Rmd” file opened (and your working
directory is at its root), simply run **`source("utils/render.R")`** in
the console (or the relevant lines in that file). This will run the
rendering file and create all the files.

Contribution
------------

Do not hesitate to improve this template by updating, documenting, or
expanding it!

Packages & Data
===============

Packages
--------

``` r
library(easystats)

summary(report::report(sessionInfo()))
```

The analysis was done using the R Statistical language (v4.0.3; R Core
Team, 2020) on macOS Catalina 10.15.7, using the packages effectsize
(v0.4.3.2), ggplot2 (v3.3.3), stringr (v1.4.0), tidyr (v1.1.2), forcats
(v0.5.1), readr (v1.4.0), dplyr (v1.0.4), rmarkdown (v2.6), tibble
(v3.0.6), purrr (v0.3.4), parameters (v0.11.0.1), insight (v0.12.0.1),
see (v0.6.2.1), performance (v0.7.0), modelbased (v0.5.1), easystats
(v0.2.0), correlation (v0.5.1), bayestestR (v0.8.2.1), report (v0.2.0)
and tidyverse (v1.3.0).

Data
----

``` r
df <- read.csv("data/data.csv")

cat(paste("The data consists of", 
          report::report_participants(df, 
                                      participants = "Participant", 
                                      age = "Age")))
```

The data consists of 10 participants (Mean age = 29.9, SD = 0.5, range:
\[29.0, 30.91\])

Descriptive Stats
=================

Part 1
------

``` r
ggplot(df, aes(x=V1, y=V2, color=Participant)) + 
  geom_point() +
  see::theme_modern()
```

![](figures/1_plot_scatter_basic-1.png)

Part 2
------

Let’s run some addition:

``` r
1+1
```

    > [1] 2

Part 3
------

I don’t know what else to do.

Full Code
=========

The full script of executive code contained in this document is
reproduced here.

``` r
# Set up the environment (or use local alternative `source("utils/config.R")`)
source("https://raw.githubusercontent.com/RealityBending/TemplateResults/main/utils/config.R")  

fast <- FALSE  # Make this false to skip the chunks
library(easystats)

summary(report::report(sessionInfo()))
df <- read.csv("data/data.csv")

cat(paste("The data consists of", 
          report::report_participants(df, 
                                      participants = "Participant", 
                                      age = "Age")))
report::cite_packages(sessionInfo())
ggplot(df, aes(x=V1, y=V2, color=Participant)) + 
  geom_point() +
  see::theme_modern()
1+1
```

Package References
==================

``` r
report::cite_packages(sessionInfo())
```

-   Ben-Shachar M, Lüdecke D, Makowski D (2020). effectsize: Estimation
    of Effect Size Indices and Standardized Parameters. Journal of Open
    Source Software, 5(56), 2815. doi: 10.21105/joss.02815
-   H. Wickham. ggplot2: Elegant Graphics for Data Analysis.
    Springer-Verlag New York, 2016.
-   Hadley Wickham (2019). stringr: Simple, Consistent Wrappers for
    Common String Operations. R package version 1.4.0.
    <a href="https://CRAN.R-project.org/package=stringr" class="uri">https://CRAN.R-project.org/package=stringr</a>
-   Hadley Wickham (2020). tidyr: Tidy Messy Data. R package version
    1.1.2.
    <a href="https://CRAN.R-project.org/package=tidyr" class="uri">https://CRAN.R-project.org/package=tidyr</a>
-   Hadley Wickham (2021). forcats: Tools for Working with Categorical
    Variables (Factors). R package version 0.5.1.
    <a href="https://CRAN.R-project.org/package=forcats" class="uri">https://CRAN.R-project.org/package=forcats</a>
-   Hadley Wickham and Jim Hester (2020). readr: Read Rectangular Text
    Data. R package version 1.4.0.
    <a href="https://CRAN.R-project.org/package=readr" class="uri">https://CRAN.R-project.org/package=readr</a>
-   Hadley Wickham, Romain François, Lionel Henry and Kirill Müller
    (2021). dplyr: A Grammar of Data Manipulation. R package version
    1.0.4.
    <a href="https://CRAN.R-project.org/package=dplyr" class="uri">https://CRAN.R-project.org/package=dplyr</a>
-   JJ Allaire and Yihui Xie and Jonathan McPherson and Javier Luraschi
    and Kevin Ushey and Aron Atkins and Hadley Wickham and Joe Cheng and
    Winston Chang and Richard Iannone (2020). rmarkdown: Dynamic
    Documents for R. R package version 2.6. URL
    <a href="https://rmarkdown.rstudio.com" class="uri">https://rmarkdown.rstudio.com</a>.
-   Kirill Müller and Hadley Wickham (2021). tibble: Simple Data Frames.
    R package version 3.0.6.
    <a href="https://CRAN.R-project.org/package=tibble" class="uri">https://CRAN.R-project.org/package=tibble</a>
-   Lionel Henry and Hadley Wickham (2020). purrr: Functional
    Programming Tools. R package version 0.3.4.
    <a href="https://CRAN.R-project.org/package=purrr" class="uri">https://CRAN.R-project.org/package=purrr</a>
-   Lüdecke D, Ben-Shachar M, Patil I, Makowski D (2020).
    “parameters:Extracting, Computing and Exploring the Parameters of
    StatisticalModels using R.” *Journal of Open Source Software*,
    *5*(53), 2445.
    <a href="doi:10.21105/joss.02445" class="uri">doi:10.21105/joss.02445</a>
    (URL:
    <a href="https://doi.org/10.21105/joss.02445" class="uri">https://doi.org/10.21105/joss.02445</a>).
-   Lüdecke D, Waggoner P, Makowski D (2019). “insight: A Unified
    Interfaceto Access Information from Model Objects in R.” *Journal of
    Open SourceSoftware*, *4*(38), 1412. doi: 10.21105/joss.01412
    (URL:<a href="https://doi.org/10.21105/joss.01412" class="uri">https://doi.org/10.21105/joss.01412</a>).
-   Lüdecke, Ben-Shachar, Waggoner & Makowski (2020). Visualisation
    Toolbox for ‘easystats’ and Extra Geoms, Themes and Color Palettes
    for ‘ggplot2’. CRAN. Available from
    <a href="https://easystats.github.io/see/" class="uri">https://easystats.github.io/see/</a>
-   Lüdecke, Makowski, Waggoner & Patil (2020). Assessment of Regression
    Models Performance. CRAN. Available from
    <a href="https://easystats.github.io/performance/" class="uri">https://easystats.github.io/performance/</a>
-   Makowski, D., Ben-Shachar, M. S. & Lüdecke, D. (2020). *Estimation
    of Model-Based Predictions, Contrasts and Means*. CRAN.
-   Makowski, D., Ben-Shachar, M. S. & Lüdecke, D. (2020). *The
    {easystats} collection of R packages*. GitHub.
-   Makowski, D., Ben-Shachar, M. S., Patil, I., & Lüdecke, D. (2019).
    Methods and Algorithms for Correlation Analysis in R. Journal of
    Open Source Software, 5(51), 2306. 10.21105/joss.02306
-   Makowski, D., Ben-Shachar, M., & Lüdecke, D. (2019). bayestestR:
    Describing Effects and their Uncertainty, Existence and Significance
    within the Bayesian Framework. Journal of Open Source Software,
    4(40), 1541.
    <a href="doi:10.21105/joss.01541" class="uri">doi:10.21105/joss.01541</a>
-   Makowski, D., Lüdecke, D., & Ben-Shachar, M.S. (2020). Automated
    reporting as a practical tool to improve reproducibility and
    methodological best practices adoption. CRAN. Available from
    <a href="https://github.com/easystats/report" class="uri">https://github.com/easystats/report</a>.
    doi: .
-   R Core Team (2020). R: A language and environment for statistical
    computing. R Foundation for Statistical Computing, Vienna, Austria.
    URL
    <a href="https://www.R-project.org/" class="uri">https://www.R-project.org/</a>.
-   Wickham et al., (2019). Welcome to the tidyverse. Journal of Open
    Source Software, 4(43), 1686,
    <a href="https://doi.org/10.21105/joss.01686" class="uri">https://doi.org/10.21105/joss.01686</a>

References
==========

Lüdecke, D., Waggoner, P. D., & Makowski, D. (2019). Insight: A unified
interface to access information from model objects in r. *Journal of
Open Source Software*, *4*(38), 1412.
