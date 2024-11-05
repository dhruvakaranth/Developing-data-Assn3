
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$dtext <- renderText({
          n <- input$myMonth
          y<-as.vector(window(AirPassengers,n,end = c(n,12))) 
          word <- paste0("Yearly total passengers:", sum(y))
          print( word)
          
          
  })      
         
  output$distPlot <- renderPlot({
    
         n <- input$myMonth
    y<-as.vector(window(AirPassengers,n,end = c(n,12))) 
    x <- c(1:12)
    mydata<- cbind(x,y)
    # draw the histogram with the specified number of bins
    plot(mydata,type="b",xlab="Month",ylab="number of passengers",col="blue")
    points(mydata,pch=1,col="red")
  })
  
  
  
  
})
