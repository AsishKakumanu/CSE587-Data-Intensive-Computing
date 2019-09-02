library(shiny)
shinyServer(
  function(input,output){
    
    # Image 1 
    output$image <- renderUI({
      if(input$map == 1){
        img(height = 350, width = 600, src = "cdc.png")
      }                                        
      else if(input$map == 2){
        img(height = 350, width = 600, src = "twitter.png")
      }
      else if(input$map == 3){
        img(height = 350, width = 600, src = "cdc.png")
      }})
    
    # Image 2
    output$image2 <- renderUI({
      img(height = 350, width = 600, src = "twitter.png")
    })
    
    output$Flu <- renderUI({
      img(height = 350, width = 600, src = "flu.png")
    })
    
    output$Influenza <- renderUI({
      img(height = 350, width = 600, src = "Influenza.png")
    })
    
    
    
    
    output$differences <- renderText({
      paste("Data displayed in CDC Map is based on the data collected from CDC Website and data in twitter map is based on tweets collected using keywords 
            like flu, influenza, fever.
            From CDC Map it is observed that Low ILI activity is observed in states of Washington, California, Iowa, Wisconsin, Ohio 
            whereas these states except Iowa and Ohio experience high ILI activity based on twitter Map.
            Both maps show that New York experiences moderate ILI activity.
            Wyoming and Nevada experience moderate ILI activity based on CDC Map and high flu level based on twitter Map.
            Utah experiences minimal ILI activity based on twitter data and high ILI activity based on CDC data. Apart from these all other states 
            experience almost similar level of ILI Activity based on both maps.
            Finally though ")
    })
  }
)