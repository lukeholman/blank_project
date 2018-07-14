The following is an empty template for creating:

- A pretty HTML file describing all your custom R functions (e.g. statistical analysis, theoretical models, web scrapers)
- A LaTeX-formatted manuscript containing text, references, results, and figures 

It uses the `drake` package for fast, scalable, and reproducible work ([drake on Github](https://github.com/ropensci/drake)).

To generate PDFs from R Markdown, you need a Tex editor installed. I use Mac, so I installed `MacTex` using the following 3 commands in Terminal:

1. Install homebrew
``ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"``

2. Install caskroom
``brew tap caskroom/cask``

# Step 3: Install MacTeX
``brew cask install mactex``

You can also theoretically get MacTeX [here](https://tug.org/mactex/mactex-download.html), but the download always failed for me.

Finally, you can re-create your project by running `run.R`. Either open the file in R and run all, or call it from the command line with 