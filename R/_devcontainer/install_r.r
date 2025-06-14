# install R packages from CRAN
install.packages(c("languageserver",
"vscDebugger",
"reticulate",
"remotes",
"tidyverse", 
"patchwork",
"httpgd",
"gridExtra",
"DiagrammeR", 
"DiagrammeRsvg",
"rmarkdown",
"rsvg",
"reshape2"
))

# install CMDSTAN_HOME
remotes::install_github("stan-dev/posterior")
install.packages("cmdstanr", repos = c("https://mc-stan.org/r-packages/", getOption("repos")))

# install from GitHub
remotes::install_github(c("MathiasHarrer/dmetar",
"ykunisato/jpaRmd",
"ykunisato/psyinfr",
"dstanley4/apaTables",
"rstudio/rstudioapi"), dependencies = TRUE)