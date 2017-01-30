#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Professor Salary Data from 2008-2009 Academic Year"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("maxYears",
                   "Max Years of Service:",
                   min = 0,
                   max = 60,
                   value = 30),
       radioButtons("sex", "Sex:",
                    c("Both" = "Both",
                      "Male" = "Male",
                      "Female" = "Female"))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      
      tabsetPanel(
        tabPanel("Salary By Sex and Rank", plotOutput("salaryPlot")), 
        tabPanel("Salary by Years Service", plotOutput("timePlot")), 
        tabPanel("Instructions", textOutput("instructions"))
      )
       
       
    )
  )
))
