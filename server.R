# Server code of Shiny web application for 'Developing data products' course.
# This application uses the public mtcars database


library(shiny)
data(mtcars)

shinyServer(function(input, output) {
  
  # Return the requested dataset
  datasetInput <- reactive({
    switch(input$dataset,
           "Automatic Transmission" = mtcars[mtcars[,"am"] == 1 & mtcars[,"cyl"] == input$cylinders,],
           "Manual Transmission" = mtcars[mtcars[,"am"] == 0 & mtcars[,"cyl"] == input$cylinders,],
           "Both" = mtcars[mtcars[,"cyl"] == input$cylinders,]
    )
  })  
  
  # Create a summary of the dataset
  output$summary <- renderPrint({
    dataset <- datasetInput()    
    summary(dataset$hp)
  })
  
  # Get the difference in HP between max and min
  output$hpdiff <- renderPrint({
    dataset <- datasetInput()    
    max(dataset$hp) - min(dataset$hp)
  })
  
  # Create a tableview of the dataset
  output$tableview <- renderTable({
    OrderIt <- datasetInput()
    OrderIt[with(OrderIt, order(-hp)),]
  })
  
  output$plot <- renderPlot({
    # draw the plot
    dataset <- datasetInput() 
    barplot(
      height = dataset$hp,
      names.arg = row.names(dataset),
      col = rainbow(20),
      xlab = "Model", 
      ylab = "Horse Power", 
      las = 2,
      axis.lty = 1,
      main = "Horse Power"
    )
  })  
})