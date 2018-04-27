library(shiny)
library(plotly)
library(deSolve)

ui <- fluidPage(
    headerPanel("Numeric ODE Solutions"),
    
    sidebarPanel(
        sliderInput("const_a", "A: ", min = -5, max = 5, value = -8/3, step = 0.1),
        sliderInput("const_b", "B: ", min = -15, max = 15, value = -10, step = 1),
        sliderInput("const_c", "C: ", min = -50, max = 50, value = 28, step = 2),
        numericInput("x_init", "x: ", value = 1),
        numericInput("y_init", "y: ", value = 1),
        numericInput("z_init", "z: ", value = 1)
    ),
    
    mainPanel(
        verticalLayout(
            plotlyOutput("plot", width = "auto", height = "800px")
#            p("A differential equation is an equation that involves the derivatives ",
#              "of a function as well as the function itself. If partial derivatives ",
#              "are involved, the equation is called a partial differential equation; ",
#              "if only ordinary derivatives are present, the equation is called an ",
#              "ordinary differential equation. Differential equations play an extremely ",
#              "important and useful role in applied math, engineering, and physics, ",
#              "and much mathematical and numerical machinery has been developed for ",
#              "the solution of differential equations.")
        )
    )
)

server <- function(input, output) {
    output$plot <- renderPlotly({
        #our "reactive" model depends on the input values for a,b,c
        model <- function(t, state, parameters) {
            with(as.list(c(state)), {
                dx <- input$const_a * x + y * z
                dy <- input$const_b * (y - z)
                dz <- -x * y + input$const_c * y - z
                list(c(dx,dy,dz))
            })
        }
        
        yini <- c(x=input$x_init,
                  y=input$y_init,
                  z=input$z_init)
        times <- seq(0,50,0.01)
        solution <- as.data.frame(ode(y = yini, times = times, func = model, parms = 0))
        
        plot_ly(
            solution, 
            x = ~x, 
            y = ~y, 
            z = ~z, 
            type = "scatter3d", 
            mode = "lines"
        )
    })
}

shinyApp(ui, server)
