ui <- fluidPage(
  selectInput("dataset", label = "Dataset_v5_demo", choices = ls("package:datasets")),
  verbatimTextOutput("summary"),
  tableOutput("table")
)