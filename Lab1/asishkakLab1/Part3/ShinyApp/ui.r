library(shiny)

shinyUI(fluidPage(
  
  br(),
  br(),
  
  sidebarPanel
  (
    # Select Input in Sidebar 
    selectInput("map",
                label ="Select the Map",
                choices =c("CDC Map" = 1,
                           "Twitter" = 2,
                           "CDC vs Twitter CDC Map" = 3),
                selected="Choose one map"),
    
    # Second Input in sidebar
    conditionalPanel(
      condition = "input.map==3",
      selectInput("map2",
                  label ="Select the Map",
                  choices =c("All keywords" = 1,
                             "Flu" = 2,
                             "Influenza" = 3),
                  selected="Choose one map")
    )
    
    
    ),
  
  
  mainPanel
  (
    # Analysis Text
    conditionalPanel(
      condition = "input.map==3",
      textOutput("differences")
    ),
    
    # Image 1 
    uiOutput("image"),
    
    # Show 2nd Image when condition is TRUE
    conditionalPanel
    (
      condition = "input.map==3",
      conditionalPanel
      (
        condition = "input.map2==1",
        uiOutput("image2")
      ),
      conditionalPanel
      (
        condition = "input.map2==2",
        uiOutput("Flu")
      ),
      conditionalPanel
      (
        condition = "input.map2==3",
        uiOutput("Influenza")
      )
      #uiOutput("image2")
    )
  )
)
)

