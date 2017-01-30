#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(car)
library(ggplot2)
library(scales)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  
   
  output$salaryPlot <- renderPlot({
    
    s <- Salaries[Salaries$yrs.service<=input$maxYears,]
    
    if (input$sex != "Both") {
      s <- s[s$sex==input$sex,]
    }
    
    ggplot(s, aes(sex,salary)) + 
      geom_bar(position="dodge", stat="identity", aes(fill = rank)) + 
      scale_y_continuous(labels=comma) + 
      coord_flip() +
      labs(title = "Average Professor Salary")  
    
    # generate bins based on input$bins from ui.Rair
    #x    <- faithful[, 2] 
    #bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    #hist(x, breaks = bins, col = 'darkgray', border = 'white')
    
  })
  
  output$timePlot <- renderPlot({
    
    s <- Salaries[Salaries$yrs.service<=input$maxYears,]
    
    if (input$sex != "Both") {
      s <- s[s$sex==input$sex,]
    }
    
    st <- aggregate(salary ~ sex+yrs.service, mean, data=s)
    
    ggplot(st, aes(yrs.service,salary, colour=sex)) +
      geom_line() +
      scale_y_continuous(labels=comma) +
      labs(title = "Average Salary by Number of Years Service",
           x = "Years Service")  
    
    
    
  })
  
  output$instructions <-  renderText({
    
    t <- paste("Adjust the slider to select the maximum numbers of years of service and ", 
      "the radio button to change the sex of the professors included in the output. ",
      "Select from the two tabs to display different plots of professor salary data matching your criteria.")
    t
    
  })
  
})
