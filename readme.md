# R Visualization

This workshop focuses on `ggplot2` for making plots in R.  The workshop also briefly covers additional packages.  

This workshop also makes use of other `tidyverse` packages for data manipulation and transformation, but you do not need to know these packages for the exercises.

# Software and Files

For this workshop, you'll need to install some R packages and download the workshop files from this repository. See below.

Slides are available at 

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


## Option 1: On your laptop 

### R and RStudio

This workshop assumes you have recent versions of R and RStudio - R 3.5 or later and RStudio 1.1. or later  Install or update packages listed above.

### Workshop Materials

[Download the materials from this repository.](http://sites.northwestern.edu/researchcomputing/resources/downloading-from-github/)

Then double click on the `workshop.Rproj` file in the folder to launch the project in RStudio.  


## Option 2: RStudio Cloud

[RStudio Cloud](https://rstudio.cloud) is a way to run RStudio in your web browser.  Set up an account.  In Your Workspace, create a new project: Click on the down arrow next to New Project in the blue button, then select New Project from a Git Repository.  Provide the address of this repository: https://github.com/nuitrcs/r-ggplot2-april2020.  This will copy all of the files from this repository into your new project.  

![rstudio cloud new project](images/rstudiocloud.png)

You will also need to install packages in this project space.


## Reference

[`ggplot2` Cheat Sheet](https://github.com/rstudio/cheatsheets/raw/master/data-visualization-2.1.pdf): you'll want to have this for reference

## Next Steps

See our [online learning resources guide for ggplot2](https://bit.ly/learn_ggplot2) on the Research Computing Services blog for suggestions of resources to practice your skills and learn more.  