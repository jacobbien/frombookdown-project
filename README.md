# Creating `frombookdown`

<!-- badges: start -->
<!-- badges: end -->

The .Rmd files in this repository contains everything needed to create [this bookdown site](http://faculty.marshall.usc.edu/jacob-bien/frombookdown/_book/) and [this R package](https://github.com/jacobbien/frombookdown-project).

To generate these from the .Rmd files, we used [bookdown](https://bookdown.org/)'s `render_book` function together with a special output format from [litr](http://faculty.marshall.usc.edu/jacob-bien/litr/docs/index.html):

```r
bookdown::render_book("index.Rmd", output_format = litr::litr_gitbook())
```
