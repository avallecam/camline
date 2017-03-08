rm(list = ls())

# set root dir -----------------------------------------------------------------

#library(knitr)
knitr::opts_knit$set(root.dir='../.')


# render -----------------------------------------------------------------------

#library(rmarkdown)
rmarkdown::render("analysis/CamLine.Rmd", clean=TRUE)
rmarkdown::render("analysis/BreakingBad.Rmd", clean=TRUE)

# move -------------------------------------------------------------------------
#move file directory path using file.rename 

#move all .png to figure/
af <- list.files(path = "./analysis", pattern = "*.png", full.names = TRUE)
an <- list.files(path = "./analysis", pattern = "*.png", full.names = FALSE)
b <- paste0("./figure/",an)
file.rename(af,b)

#move all .html to report/
cf <- list.files(path = "./analysis", pattern = "*.html", full.names = TRUE)
cn <- list.files(path = "./analysis", pattern = "*.html", full.names = FALSE)
d <- paste0("./report/",cn)
file.rename(cf,d)
