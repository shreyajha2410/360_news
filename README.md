# Title: 360 News Application
API based project: No dataset needed
# Methodology
360 News is an application which shows the top headlines and news articles related to our country India. 
The project started with doing research of the need of the application that is to create an application for people having interest in current affairs and news or are preparing for any entrance exams. 
The application has three views-
 i) Home page view- Shows the various categories on top - Buisness, Technology, Science, Entertainment etc.
 ii) Category view- On tapping on a category button, application navigates to another page having blog tiles of specific category.
 iii) Article view- On tapping a blog tile, application navigates to webpage having entire article on screen.
The technology stack which is used is Flutter which is a powerful front end mobile framework which is used for cross platform i.e. both IOS and Android. The front end of the project started with home page view by creating the category tiles using the stack widget and giving a scroll direction of horizontal. 
Blog tiles are created using a container widget, having separate columns each representing a blog tile, separated by a margin at top and bottom.

# Description
The data is fetched from News API which is a REST API.
HTTP package is added into the project.
In this application we are using two APIs -
 1. One to fetch the top headlines of the country
 2. Second to fetch the news articles of the specified category.
http.get is used to fetch the data from the API which sends the data in JSON format.
We check that the repsonse status code is 200 and the data sent by API server is not null.
json.decode is used to convert the JSON data to Dart objects.

# Input/ Output
<img width="958" alt="image" src="https://user-images.githubusercontent.com/90370611/208240771-3f0b718e-cc2e-4c22-8b1d-362d22ebe9f7.png">
![WhatsApp Image 2022-12-17 at 17 36 33](https://user-images.githubusercontent.com/90370611/208241264-4e31520a-6af7-43ee-a403-72e7efe99d04.jpeg)


# Live Link
https://drive.google.com/file/d/1vWRlRbu1rY5p44fiHfpbKiAVhK6pdiEQ/view?usp=share_link

# Screenshot of Interface
![WhatsApp Image 2022-12-17 at 17 36 33](https://user-images.githubusercontent.com/90370611/208241264-4e31520a-6af7-43ee-a403-72e7efe99d04.jpeg)
![WhatsApp Image 2022-12-17 at 17 36 14](https://user-images.githubusercontent.com/90370611/208241274-88711176-2bfd-43a6-bfae-9fbe8a348cfe.jpeg)


