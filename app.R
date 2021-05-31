library(shiny)

ui <- fluidPage(
  "Hello, world, v3!"
)
server <- function(input, output, session) {
}


shinyApp(ui, server)