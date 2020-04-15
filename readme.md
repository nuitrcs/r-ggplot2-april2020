# R Visualization

This workshop focuses on `ggplot2` for making plots in R.  The workshop also briefly covers additional packages.  

This workshop also makes use of other `tidyverse` packages for data manipulation and transformation, but you do not need to know these packages for the exercises.

# Software and Files

Slides are available at https://nuitrcs.github.io/r-ggplot2-april2020/slides/, or open the `index.html` file in the slides folder of the workshop materials once you download them.

You will need R and RStudio for this workshop, and you will need the files from this repository to do the exercises.  See [installing or accessing R and RStudio](https://sites.northwestern.edu/researchcomputing/resources/r-and-rstudio/) for instructions.

## Packages

Whether using R on your laptop or in the cloud, there are several packages you'll need to install: 

* tidyverse
* babynames

Install these with the R command

```r
install.packages(c("tidyverse", "babynames"), 
                 repos="http://cran.rstudio.com")
```

or use the buttons in the Packages window in RStudio to install them.

If you previously installed `tidyverse` or `ggplot2`, please update `ggplot2` to the current version (3.3). You can use the Update button the Packages tab in RStudio to update the package.



## Reference

[`ggplot2` Cheat Sheet](https://github.com/rstudio/cheatsheets/raw/master/data-visualization-2.1.pdf): you'll want to have this for reference

## Next Steps

See our [online learning resources guide for ggplot2](https://bit.ly/learn_ggplot2) on the Research Computing Services blog for suggestions of resources to practice your skills and learn more.  