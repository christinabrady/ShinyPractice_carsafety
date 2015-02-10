shinyUI(pageWithSidebar(
    headerPanel('Car Safety'),
    sidebarPanel(
        selectInput('type', "Vehicle type", choices=levels(carsafety$type))
        ),
    mainPanel(
        plotOutput('plot1')
        )
    ))