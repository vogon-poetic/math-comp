library(shiny)
library(deSolve)
library(plotly)

ui <- fluidPage(
    titlePanel("Numerical Solutions to a System of ODEs"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("const_a", "A: ",
                        min = -5, max = 5, value = -8/3),
            sliderInput("const_b", "B: ",
                        min = -15, max = 15, value = -10),
            sliderInput("const_c", "C: ",
                        min = -50, max = 50, value = 28)
        ),
        
        mainPanel(plotOutput("graph"))
    )
)

server <- function(input, output) {
    sliderValues <- reactive({
        c(input$const_a, input$const_b, input$const_c)
    })
    
    output$graph <- renderPlot({
        
        model <- function(t, state, parameters) {
            with(as.list(c(state)), {
                dx <- input$const_a * x + y * z
                dy <- input$const_b * (y - z)
                dz <- -x * y + input$const_c * y - z
                list(c(dx,dy,dz))
            })
        }
        
        yini <- c(x=1,y=1,z=1)
        times <- seq(0,30,0.01)
        solution <- ode(y = yini, times = times, func = model, parms = 0)
        scatterplot3d(solution[,2:4], type = "l", box = F, col.axis = "blue",
                      highlight.3d = T)
    })
}

shinyApp(ui,server)
