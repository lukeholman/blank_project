## Blank drake project with template .rmd manuscript

The following is an empty template for creating:

- A [pretty HTML file](http://htmlpreview.github.com/?https://github.com/lukeholman/blank_project/blob/master/scripts/custom_functions.html) describing all your custom R functions (e.g. statistical tests, theoretical models, web scraping scripts)
- A [LaTeX-formatted PDF manuscript](https://github.com/lukeholman/blank_project/blob/master/manuscript/blank_manuscript.pdf) containing text, references, results, and figures. 

It uses the `drake` package for scalable and reproducible work ([drake on Github](https://github.com/ropensci/drake)). To start using the template, clone or download this repo, change something, and then call `run.R`. For example run `source("run.R")` in R, or `Rscript run.R` in Terminal.

## How to install a TeX editor
To generate PDFs from R Markdown, you need a TeX editor installed. On Mac, I installed `MacTex` using the following 3 commands in Terminal (skip 1 and 2 if you have these programs already):

1. Install homebrew
```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

2. Install caskroom
```bash
brew tap caskroom/cask
```

3. Install MacTeX
```bash
brew cask install mactex
```

You can also theoretically get MacTeX [here](https://tug.org/mactex/mactex-download.html), but the download failed for me. 

