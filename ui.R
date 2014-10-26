shinyUI(pageWithSidebar(
      headerPanel("Sentiment Analysis"),
      sidebarPanel(
            h4('Description'),
            p('This App identifies the sentiment of the opinion provided'),
            h4('Please fill in the following data:'),
#             numericInput('id1', 'Number of Twitters to analyze', 100, min = 50, max = 200, step = 10),
            radioButtons("disease", "Choose one of the modern epidemic diseases:",
                               c("Ebola" = "ebola",
                                 "VIH" = "VIH",
                                 "Cholera" = "cholera",
                                 "Influenza" = "influenza",
                                 "Dengue" = "dengue",
                                 "Cancer" = "cancer")),
            textInput('opinion','What do you think about this disease?'),
            submitButton('Refresh')
      ),
      mainPanel(
            h4('Selected disease:'),
            verbatimTextOutput("odisease"),
            h4('Your opinion:'),
            verbatimTextOutput("oopinion"),
            h4('Your sentiment is:'),
            verbatimTextOutput("osentiment"),
            h4('Thepolarity of this sentiment is:'),
            verbatimTextOutput("opolarity")
      )
))