ui <- fluidPage(
  selectInput("dataset", label = "Dataset_v4_demo", choices = ls("package:datasets")),
  verbatimTextOutput("summary"),
  tableOutput("table")
)