DevDataProducts
===============

Repository for the Course Project of the Developing Data Products Course.

### Shiny App
To run the application make sure that the shiny and sentiment packages are loaded.

The sentiment package is also included in this repository in the file sentiment_0.2.tar.gz. If you have the archive in your working directory, it can be installed using the following line of code:
install.packages("sentiment_0.2.tar.gz", repos = NULL, type="source")

To run the application, use runApp() when the ui.R and server.R are in your working directory. 
Apparently because the Sentiment package is not in CRAN, it was not possible to deploy the App to host it at shinyApps.io

### Slidify Pitch
In this repository, there is a Folder called Pitch. Inside, there is the markdown file for the Slidify presentation for the App Pitch. To see the presentation form R, make sure the slidify library is loaded and call slidify("index.Rmd").

Furthermore, there is a HTML file that can be browsed to see the presentation. Additionally, the presentation can be browsed online at:

http://monicaph.github.io/index.html
