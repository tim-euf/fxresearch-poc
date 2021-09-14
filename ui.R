ui <- fluidPage(
  selectInput("dataset", label = "Datasetxx", choices = ls("package:datasets")),
  verbatimTextOutput("summary"),
  tableOutput("table")
)