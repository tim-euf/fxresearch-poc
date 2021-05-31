ui <- fluidPage(
  selectInput("dataset", label = "Dataset2", choices = ls("package:datasets")),
  verbatimTextOutput("summary"),
  tableOutput("table")
)