#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
# This Shiny application has 2 simple illustrations. 
# Simple Calculator 
# 1.	Simple Calculating functionality in which it accepts user inputs of 2 numbers and below calculation options.
# a.	Add
# b.	Divide
# c.	Multiply
# d.	Divide.
# 2.	Based on the user selection, the calculation is being taken care and the results are displayed in the main panel. 
# Display of Mtcar Mileage based on different column features 
# 
# -	All mtcars columns are listed in the list box. User can select the column and multiple column selection is possible. 
# -	Based on the column selection result table will produce the results in the main panel. 
# 
# This project covers the following functionalities.
# a)	Basic screen /user selection features (Text box input , drop down list and check box ). 
# b)	It also covers reactive output on the server side. 

library(shiny)
data("mtcars")

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    # Application title
    titlePanel("Eday Shiny Project"),
    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            h3("Simple Calcultor"),
            numericInput('id1','First Number',0, min = 0 , max = 10 , step = 1),
            numericInput('id2','Second Number',0, min = 0 , max = 10 , step = 1),
            radioButtons("id3", "Select calc:",
                         c("Add" = "1",
                           "Subract" = "2",
                           "Multiply" = "3",
                           "Division" = "4")),
            h3("Mtcars Mpg Display"),
            selectInput("variable", " Select Mtcars Columns:",
                        colnames(mtcars),multiple = TRUE , 
                        # c("Cylinders" = "cyl",
                        #   "Transmission" = "am",
                        #   "Gears" = "gear")
                        )
            
        ),

        # Show a plot of the generated distribution
        mainPanel(
            h3("Calc Results"),
            verbatimTextOutput("Oid1"),
            h3("Mtcars Table display"),
            tableOutput("data")
         )
    )
))