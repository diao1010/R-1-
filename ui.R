library(shiny)
library(ggplot2)
library(plyr)

shinyUI(fluidPage(
  headerPanel("Demo 2016-11-1 resume"),
  
  sidebarPanel(
    
    numericInput(inputId = "timing",
                 label = "停機時間(分)",
                 min = 0, max = 30, value = 1.5),
    sliderInput(inputId = "num",
                label = "查看前幾筆的資料",
                value = 5, min=1, max = 18)),
    mainPanel( 
      tabsetPanel(
        tabPanel(strong("Plot1"),
                  plotOutput(outputId="bar")
                 ),
        
        tabPanel(strong("Plot2"), 
                 br(),
                 plotOutput(outputId="heat_map")
                 ),
        
        tabPanel(strong("Plot3"), 
                 br(),
                 plotOutput(outputId="pie")
        )

))))

