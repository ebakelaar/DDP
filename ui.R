# User Interface code of Shiny web application for 'Developing data products' course.
# This application uses the public mtcars database
# The application shows a panel on the left with some selection criteria
# On the right the application shows results on 2 tabs, which are based on the selection criteria.

library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Overview / Analysis of MT Cars Dataset"),
  
  # Selection Criteria
  sidebarLayout(
    sidebarPanel(
      sliderInput("cylinders",
                  "Number of Cylinders:",
                  min = 4, 
                  step = 2,
                  max = 8,
                  value = 4,
                  ticks = TRUE),
      
      selectInput("dataset", "Transmission type:", choices = c("Automatic Transmission", "Manual Transmission", "Both")),
      
      helpText("
          Shows information from the MTCARS dataset. The data shown depends on the selection criteria.
          Selection criteria are 'Number of Cylinders' and 'Transmission Type'.
          The first tab shows the information in a table, the second shows info in a plot.
          Results are ordered by number of Horse power.
        ")
      
    ),#sidebarPanel
    
    # Show Panel with results (2 tabs)
    mainPanel(      
      tabsetPanel(type = "tabs", tabPanel(
                                  "Car Specifications", 
                                  br(),
                                  helpText("Overview Car Specifications"),
                                  tableOutput("tableview"),
                                  br(),
                                  helpText("Data analysis Summary on Horse Power"),
                                  verbatimTextOutput("summary"),
                                  br(),
                                  helpText("Horse Power difference between Max and min"),
                                  verbatimTextOutput("hpdiff"),
                                  br()
                                ), 
                                tabPanel("Graphic", plotOutput("plot"))
                  
                )#tabsetPanel
    )#mainPanel
  )#sidebarLayout
  )#fluidPage
)#shinyUI