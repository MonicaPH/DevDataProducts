library(shiny)
library(sentiment)

emotion <- function(text) {
  #classify Emotion
  class_emo = classify_emotion(text, algorithm="bayes", prior=1.0)
  # get emotion best fit
  emotion = class_emo[,7]
  emotion
}

polarity <- function(text) {
  # classify polarity
  class_pol = classify_polarity(text, algorithm="bayes")
  # get polarity best fit
  polarity = class_pol[,4]
  polarity
}

shinyServer(
      function(input,output) {
            output$odisease <- renderPrint({input$disease})
            output$oopinion <- renderPrint({input$opinion})
            
            output$osentiment <- renderPrint({emotion(input$opinion)})
            output$opolarity <- renderPrint({polarity(input$opinion)})
      }
      
)