# Creating `frombookdown`

<!-- badges: start -->
<!-- badges: end -->

The .Rmd files in this repository contains everything needed to create [this bookdown site](http://faculty.marshall.usc.edu/jacob-bien/frombookdown/_book/) and [this R package](https://github.com/jacobbien/frombookdown-project/tree/main/frombookdown).

To generate these from the .Rmd files, we used `litr::render()` from the [litr](http://faculty.marshall.usc.edu/jacob-bien/litr/docs/index.html) R package, which invokes the `litr::litr_gitbook()` output format, which extends a [bookdown](https://bookdown.org/) output format to have `litr` behavior:

```r
litr::render("index.Rmd")
```
