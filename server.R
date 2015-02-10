library(UsingR)
library(ggplot2)
shinyServer(function(input, output){
    
    #subset data frame according to type input
    filter <- reactive({
        sub <- carsafety[carsafety$type == input$type,]
        })
    #create plot
    output$plot1 <- renderPlot({
        g <- ggplot(filter(), aes(x=Make.model, y=Driver.deaths)) + geom_bar(stat="identity")
        return(g)
    })
})