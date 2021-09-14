ui <- fluidPage(
  selectInput("dataset", label = "Datasetxxx", choices = ls("package:datasets")),
  verbatimTextOutput("summary"),
  tableOutput("table")
)