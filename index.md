---
title       : Analysis of MT Cars Dataset
subtitle    : DDP Project
author      : Bakelaar
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Overview / Analysis of MT Cars Dataset

1. What is the MT Cars Dataset
2. Why this Application
3. How to use the Application

--- .class #id 

## What is the MT Cars Dataset

The mtcars dataset is a dataset with data that was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models).

source: https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html


--- .class #id 

## Why this Application

This application shows you all the information of the cars in this database ordered by amount of horse power. There selection criteria to select only the cars with a certain number of cylinders. It is also possible to filter on the type of transmission.

--- .class #id 

## How to use the Application

1. Open the app on https://bakelaar.shinyapps.io/project
2. On the left select the number of cylinders you are interested in.
3. On the left select the type of transmission you are interested in.
4. The table on the right shows you the specs of the cars that match your criteria.
5. Below the table the app shows basic data analysis on the amount of horsepower.
6. The second tab (Graphic) on the right shows the amount of horsepower per car in a plot.

