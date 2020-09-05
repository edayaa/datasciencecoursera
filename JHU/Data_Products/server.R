#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
data("mtcars")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    output$data <- renderTable({
        mtcars[, c("mpg", input$variable), drop = FALSE]
    }, rownames = TRUE)
    
    Num1 <- reactive({input$id1})
    Num2 <- reactive({input$id2})
    
    output$Oid1 <- renderPrint ( { 
        if (input$id3 == '1')
            as.numeric(Num1()) + as.numeric(Num2())
        else if (input$id3 == '2')
            as.numeric(Num1()) - as.numeric(Num2())
        else if (input$id3 == '3')
            as.numeric(Num1()) * as.numeric(Num2())
        else if (input$id3 == '4')
            as.numeric(Num1()) / as.numeric(Num2())
     } )

})
