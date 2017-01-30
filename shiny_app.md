Professor Salary Shiny App
========================================================
author: Chris Rector
date: January 29, 2017
autosize: true

Overview
========================================================

As part of the Johns Hopkins Developing Data Products course, offered via Coursera, we've developed a Shiny App to allow you to calculate and plot average university professor salary data in terms of:

- the sex of the professor
- the number of years of service worked by the professor

The Data
========================================================
The data used by the Shiny App comes from the Salaries data set, which can be found in the "car" library.


```r
library(car)
names(Salaries)
```

```
[1] "rank"          "discipline"    "yrs.since.phd" "yrs.service"  
[5] "sex"           "salary"       
```

Overview of Professor Data
========================================================

The following plot shows the average salaries for the entire data set, by sex and rank.

![plot of chunk unnamed-chunk-2](shiny_app-figure/unnamed-chunk-2-1.png)

Features of Our Shiny App
========================================================

In addition to the bar plot shown in the previous slide, our app provides a line plot of average professor salaries at each year of service. Each plot is available in its own separate tab.

The two plots are dynamically updated based on the years of service slide and sex radio buttons shown on the left side of the application.

Where to Find the App
========================================================

Please find the app at the following url:

https://rector.shinyapps.io/ShinyApp/

We hope you enjoy it. Code for the app can be found at:

https://github.com/chrisrector/chrisrector.github.io

