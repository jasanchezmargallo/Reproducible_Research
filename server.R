# Compute the distance between two European cities using the "eurodist" dataset
# origin -> index of the city of origin
# destination -> index of the city of destination
computeDistance <- function (origin, destination){
    # We load the datasets
    library(datasets)
    
    # Convert the "eurodist" dataset as a maxtrix to make easier working with it
    ED <- as.matrix(eurodist)
    
    # We obtain the distance value using the two arguments of the function
    ED[as.numeric(origin), as.numeric(destination)]
}

# Return the name of a city from the "eurodist" dataset using its index
getCityName <- function (index){
    library(datasets)
    
    ED <- as.matrix(eurodist)
    
    # Return the name of the city which corresponds to the index provided as argument of the function
    rownames(ED)[as.numeric(index)]
}

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    # Compute the output variables using the previously defined functions and the input variables fro the UI
    output$distance <- renderPrint({computeDistance(input$origin, input$destination)})
    output$origin <- renderPrint({getCityName(input$origin)})
    output$destination <- renderPrint({getCityName(input$destination)})
   
})
