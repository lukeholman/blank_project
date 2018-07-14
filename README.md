## Blank drake project with template .rmd manuscript

The following is an empty template for creating:

- A [pretty HTML file](http://htmlpreview.github.com/?https://github.com/lukeholman/blank_project/blob/master/scripts/custom_functions.html) describing all your custom R functions (e.g. statistical tests, theoretical models, web scraping scripts)
- A [LaTeX-formatted PDF manuscript](https://github.com/lukeholman/blank_project/blob/master/manuscript/blank_manuscript.pdf) containing text, references, results, and figures. 

It uses the `drake` package for scalable and reproducible work ([drake on Github](https://github.com/ropensci/drake)). To start using the template, clone or download this repo, change something, and then call `run.R`. For example run `source("run.R")` in R, or `Rscript run.R` in Terminal. `drake` will re-run anything that has changed, in the correct order, and re-make your pretty report file(s). By editing the last line of `run.R`, you can get `drake` to re-make the project using multiple CPUs on your local computer, or even a supercomputer.

## Installing a TeX editor
To generate PDFs from R Markdown, you need a TeX editor installed. On Mac, I installed `MacTex` using the following 2 commands in Terminal (skip 1 if you have these programs already):

1. Install homebrew and caskroom
```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
```

2. Install MacTeX
```bash
brew cask install mactex
```

You can also theoretically get MacTeX [here](https://tug.org/mactex/mactex-download.html), but the download did not work for me. 

## Acknowledgements
Thanks to @PhilipErm for sharing his .rmd manuscript set-up, saving me lots of hassle! My aim with this repo is to pay it forward. I'll add new tricks to this template as I learn them. 

