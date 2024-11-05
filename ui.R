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
  h3(titlePanel("Air Passengers, MFD=2/3/2018")),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
   
          
       sidebarPanel(
               helpText("This application presents the number of air apssengers from 1940 to 1960"),   
       sliderInput("myMonth",
                   "Passengers by year",
                   min = 1949,
                   max = 1960,
                   value = 1955),
       
       helpText("Input the year that you are looking for")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
            helpText("X axis presnets the 12 months  a year and Y presents the number of passengers"),
            plotOutput(outputId="distPlot"),
            h3( textOutput(outputId="dtext"))
    )
  )
))
