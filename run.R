library(drake)
library(future.batchtools)
library(dplyr)

# like source(), but for .rmd files (found on Stack Overflow)
source_rmd <- function(file, local = FALSE, ...){
  options(knitr.duplicate.label = "allow")
  tempR <- tempfile(tmpdir = ".", fileext = ".R")
  on.exit(unlink(tempR))
  knitr::purl(file, output = tempR, quiet = TRUE)
  source(tempR, local = globalenv(), ...)
}

# For some reason drake fails if I specify the output file, but NULL works fine.
neat_render <- function(path) rmarkdown::render(input = path, output_file = NULL, quiet = TRUE)

# Define the drake workflow plan
my_plan <- drake_plan(
  
  # Load in the raw data
  raw_data = readRDS(file_in("data/iris.rds")),
  
  # Load all the custom functions
  load_custom_functions = source_rmd(file_in("scripts/custom_functions.Rmd")),
  
  # Clean up the raw data
  data = raw_data %>% clean_raw_data(),
  
  # Make figure 1
  fig1 = data %>% make_fig1("figures/fig1.pdf"),
  
  # Render an HTML report showing all the custom functions
  pretty_functions = neat_render(knitr_in("scripts/custom_functions.Rmd")),
  
  # Render the manuscript as a PDF
  pretty_manuscript = neat_render(knitr_in("manuscript/blank_manuscript.Rmd")),
  strings_in_dots = "literals"
)

# clean(destroy = TRUE) # running this will line delete the drake cache, allowing a complete re-run
make(my_plan, seed = 1) # See also the 'jobs' option to re-run everything in parallel
