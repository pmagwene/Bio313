# Latex-Extras

## About ##

This directory contains additional style and configuration files that I use to produce PDF slides and handouts.

## Producing PDF versions of the hands-on documents ##

I use a [Pandoc](http://johnmacfarlane.net/pandoc/) in combination with a Python script called [github2pandoc](https://github.com/pmagwene/github2pandoc) to convert GitHub wiki content to PDF files. 

`Bio313.latex.template` is a custom Pandoc LaTeX template that tunes syntax highlighting and figure sizing to my preferences. This template can be placed in `$HOME/.pandoc/templates` or a path to it can be specified using the `--data-dir` argument of Pandoc.

Here's an example of how to use `github2pandoc` and `pandoc` to produce LaTeX output:

    $ github2pandoc.py -i hands-on2.md | pandoc -s -f markdown -t latex \
        --listings --template Bio313.latex.template -o hands-on2.tex

The resulting LaTeX file should be processed using XeLaTeX.

