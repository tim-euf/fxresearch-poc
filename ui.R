ui <- fluidPage(
  selectInput("dataset", label = "Dataset_v3", choices = ls("package:datasets")),
  verbatimTextOutput("summary"),
  tableOutput("table")
)