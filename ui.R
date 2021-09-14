ui <- fluidPage(
  selectInput("dataset", label = "Dataset_v2", choices = ls("package:datasets")),
  verbatimTextOutput("summary"),
  tableOutput("table")
)