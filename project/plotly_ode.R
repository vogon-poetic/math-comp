library(shiny)
library(shinydashboard)
library(plotly)
library(deSolve)

dashboard_ui <- dashboardPage(
    dashboardHeader(title = "Plotting ODEs with R"),
    dashboardSidebar(
        sliderInput("sigma", "σ: ", min = -5, max = 5, value = -8/3, step = 0.1),
        sliderInput("rho", "ρ: ", min = -15, max = 15, value = -10, step = 1),
        sliderInput("beta", "β: ", min = -50, max = 50, value = 28, step = 2),
        numericInput("x_init", "Initial x", value = runif(1,0,10)),
        numericInput("y_init", "Initial y", value = runif(1,0,10)),
        numericInput("z_init", "Initial z", value = runif(1,0,10))
    ),
    dashboardBody(
        fluidRow(
            box(plotlyOutput("plot", width = "auto", height = "680px"))
        )
    )
)

server <- function(input, output) {
    # This is the model of the system, it's just a fancy function that 
    # the deSolve function ode() takes and integrates. It must be of the form
    # model <- function(t, state, parameters, ...) so that ode() knows what to
    # do with it. The arguments are described below: 
    #
    #  (t): The initial time point in the integration
    #  (state) The initial values of the variables x, y, and z
    #  (parameters) A vector or list of parameters (the constants)
    #
    model <- function(t, state, parameters) {
        with(as.list(c(state, parameters)), {
            dx <- sigma * x + y * z
            dy <- rho * (y - z)
            dz <- -x * y + beta * y - z
            list(c(dx,dy,dz))
        })
    }
    
    # This is the time domain we will integrate over. The smaller the step,
    # the more accurate a curve you will get, and the longer it will take
    # to solve.
    times <- seq(0,50,0.01)
        
    # This is the plot that will be generated when we load the app, or when 
    # any input parameters are changed. Unfortunately since deSolve::ode gets 
    # called in here, that means re-solving the ODE every time our constants are 
    # updated... That is the source of the lag when you move a slider.
    # 
    # renderPlotly is a function which takes a block of code as its argument. 
    # Kind of interesting as we haven't seen that in class yet, but it is going
    # to run the code whenever the plot environment needs to be updated. The 
    # output$plot object is "reactive" so everything involving the user-input
    # needs to be contained within the braces.
    output$plot <- renderPlotly({
        
        # The initial values, set by the numeric input fields
        yini <- c(x=input$x_init,
                  y=input$y_init,
                  z=input$z_init)
        
        # The values of the constants sigma, rho, and beta set by the sliders
        parameters <- list(sigma = input$sigma,
                           rho = input$rho,
                           beta = input$beta)
        
        # This is the actual call to deSolve::ode. The output is a matrix 
        # with all of the variables t, x, y, z, and some other stuff, but it 
        # needs to be transformed into a data.frame to plot with Plotly. Sort of
        # like using as.numeric() we use as.data.frame() to translate it into 
        # something useful. 
        solution <- as.data.frame(
            ode(y = yini, 
                times = times, 
                func = model, 
                parms = parameters)
        )
        
        # This, as the final chunk of code ran by renderPlotly, is the actual 
        # plot object. As you can probably tell it's the setup that is the 
        plot_ly(
            solution, 
            x = ~x, # this is just a label for the axis
            y = ~y, 
            z = ~z, 
            type = "scatter3d", # the type of plot to use
            mode = "lines" # if we didn't specify lines, there would be a point
                           # at every single vertex of our curve!
        )
    })
}

shinyApp(dashboard_ui, server)
