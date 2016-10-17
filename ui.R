library(shiny)

# Define UI for application
shinyUI(
    pageWithSidebar(
        # Application title
        titlePanel("Compute the road distances between two European cities"),
        
        sidebarPanel(
            # Select box for the city of origin
            selectInput("origin", label = h3("City of origin"), 
                        choices = list(
                            "Athens" = 1, 
                            "Barcelona" = 2, 
                            "Brussels" = 3,
                            "Calais" = 4,
                            "Cherbourg" = 5,
                            "Cologne" = 6,
                            "Copenhagen" = 7,
                            "Geneva" = 8,
                            "Gibraltar" = 9,
                            "Hamburg" = 10,
                            "Hook of Holland" = 11,
                            "Lisbon" = 12,
                            "Lyons" = 13,
                            "Madrid" = 14,
                            "Marseilles" = 15,
                            "Milan" = 16,
                            "Munich" = 17,
                            "Paris" = 18,
                            "Rome" = 19,
                            "Stockholm" = 20,
                            "Vienna" = 21
                            ), 
                        selected = 1),
            
            # Select box for the city of destination
            selectInput("destination", label = h3("City of destination"), 
                        choices = list(
                            "Athens" = 1, 
                            "Barcelona" = 2, 
                            "Brussels" = 3,
                            "Calais" = 4,
                            "Cherbourg" = 5,
                            "Cologne" = 6,
                            "Copenhagen" = 7,
                            "Geneva" = 8,
                            "Gibraltar" = 9,
                            "Hamburg" = 10,
                            "Hook of Holland" = 11,
                            "Lisbon" = 12,
                            "Lyons" = 13,
                            "Madrid" = 14,
                            "Marseilles" = 15,
                            "Milan" = 16,
                            "Munich" = 17,
                            "Paris" = 18,
                            "Rome" = 19,
                            "Stockholm" = 20,
                            "Vienna" = 21
                        ), 
                        selected = 1),
            
            # Submit button to launch the computation
            submitButton("Submit")
            ),
    
        # Show the distance computed
        mainPanel(
            h3("Road distance (Km)"),
            verbatimTextOutput("distance"),
            
            # As a check, we show the input values introduced
            h4("Origin"),
            verbatimTextOutput("origin"),
            h4("Destination"),
            verbatimTextOutput("destination")
        )
    )
)
