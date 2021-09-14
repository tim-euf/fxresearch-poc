ui <- fluidPage(
  selectInput("dataset", label = "Dataset_v1", choices = ls("package:datasets")),
  verbatimTextOutput("summary"),
  tableOutput("table")
)