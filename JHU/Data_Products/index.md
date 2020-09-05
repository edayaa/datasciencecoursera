---
title       : My Slidify
subtitle    : Data products project
author      : Edayadulla Mohamed Iqbal
job         : Business Data Analyst
framework   : html5slides   # {io2012, html5slides, shower, dzslides, ...}
highlighter : prettify      # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Simple Slidify Projext

1. Simple Scatter Plot
2. Simple Table
3. Simple Histogram
4. End

---  plot #simple-plot

## A Simple Plot ##

Let us create a simple scatterplot.


```r
require(ggplot2)
qplot(wt, mpg, data = mtcars)
```

<img src="assets/fig/simple-plot-1.png" title="plot of chunk simple-plot" alt="plot of chunk simple-plot" style="display: block; margin: auto;" />

---  #simple-table

## A Simple Table ##

Let us create a simple table.


```r
head(mtcars)
```

```
##                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
## Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
## Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
## Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```

---  #simple-Histogram

## A Simple Histogram ##

Here is the sample Histogram.


```r
hist(mtcars$cyl,main = paste("Histogram of" , "Mtcars Cylinders"),col = 5 , xlab = "Cylinders" , labels = TRUE)
```

<img src="assets/fig/simple-histogram-1.png" title="plot of chunk simple-histogram" alt="plot of chunk simple-histogram" style="display: block; margin: auto;" />

---  #End 

## End ##


